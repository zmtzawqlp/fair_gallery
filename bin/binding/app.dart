// ignore_for_file: avoid_print

import 'dart:io';
import 'package:package_config/package_config.dart';
import 'package:path/path.dart' as path;
import 'package:analyzer/dart/analysis/features.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import '../util/binding.dart';
import '../util/utils.dart';

// import 'package:flutter/widgets.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/semantics.dart';
// import 'package:flutter/animation.dart';
Set<String> _imports = <String>{
  'import \'package:extended_text_library/extended_text_library.dart\' as extended_text_library;',
};

String _codes = '''
int _kDefaultSemanticIndexCallback(Widget _, int localIndex) => localIndex;
''';

Map<String, String> _fixes = <String, String>{
  '\'SelectionOverlay\': (props) => SelectionOverlay(':
      '\'SelectionOverlay\': (props) => extended_text_library.SelectionOverlay(',
  '\'SelectionOverlay.fadeDuration\': SelectionOverlay.fadeDuration,':
      '\'SelectionOverlay.fadeDuration\': extended_text_library.SelectionOverlay.fadeDuration,'
};

void main(List<String> args) async {
  Directory projectDirectory = getProjectDirectory();
  final File file =
      File(path.join(projectDirectory.path, 'bin', 'binding', 'binding.dart'));
  assert(file.existsSync());

  final result = parseFile(
    path: file.path,
    featureSet: FeatureSet.latestLanguageVersion(),
  );
  var packageConfig = await findPackageConfig(projectDirectory);
  if (packageConfig == null) {
    return;
  }
  List<String> includedPaths = <String>[];
  for (var child in result.unit.directives) {
    if (child is ImportDirective) {
      var uriString = child.uri.toString();
      // 去掉引号
      uriString = uriString.substring(1, uriString.length - 1);
      assert(uriString.startsWith('package:'));
      var resolve = packageConfig.resolve(Uri.parse(uriString));
      // 项目里面文件
      if (resolve!.path.startsWith(projectDirectory.path)) {
        var resolve = packageConfig.resolve(Uri.parse(uriString));
        if (resolve != null) {
          includedPaths.add(resolve.path);
          _imports.add(child.toString());
        }
      }
      // 三方库
      else {
        Uri uri = Uri.parse(uriString);
        var resolve = packageConfig.resolve(Uri.parse(uriString));
        var resolvePackage = packageConfig[uri.path.split('/').first];
        if (resolvePackage != null && resolve != null) {
          _imports.add('import \'$uriString\';');
          await _resolveCopyPackage(
            projectDirectory,
            resolvePackage,
            3,
            includedPaths,
            resolve,
            _imports,
          );
        }
      }
    }
  }

  await createBindings(
    projectDirectory: projectDirectory,
    includedPaths: includedPaths,
    fileName: 'App',
    imports: _imports.join('\n'),
    componentSkips: {},
    codes: _codes,
    fixes: _fixes,
    functionDomainImports: _imports.join('\n'),
    functionDomainFixes: {
      'T Function(dynamic)': 'dynamic Function(dynamic)',
      'T Function(T, dynamic)': 'dynamic Function(dynamic, dynamic)',
      'Widget Function(BuildContext, T, int)':
          'Widget Function(BuildContext, dynamic, int)',
      'T Function()': 'dynamic Function()',
    },
    // FunctionType 的 fullElement
    // 有些是不会用的，特别是一些泛型
    functionDomainSkips: {},
  );
  // dartFix();
}

Future<void> getIncludedPaths({
  required String filePath,
  required List<String> includedPaths,
  required int depth,
  required Set<String> imports,
  required String packageName,
  required String packageRoot,
  required PackageConfig packageConfig,
  required Directory projectDirectory,
}) async {
  if (depth == 0) {
    return;
  }

  includedPaths.add(filePath);
  final result = parseFile(
    path: filePath,
    featureSet: FeatureSet.latestLanguageVersion(),
  );

  for (var child in result.unit.directives) {
    if (child is NamespaceDirective) {
      var uri = child.uri.toString();
      // 去掉引号
      uri = uri.substring(1, uri.length - 1);
      var isDartSdk = uri.startsWith('dart:');
      if (child is ExportDirective) {
        if (uri.startsWith('package:')) {
          var resolve = packageConfig.resolve(Uri.parse(uri));
          var resolvePackage =
              packageConfig[Uri.parse(uri).path.split('/').first];
          if (resolvePackage != null && resolve != null) {
            if (!resolve.toString().contains('.dart_tool')) {
              await _resolveCopyPackage(
                projectDirectory,
                resolvePackage,
                depth - 1,
                includedPaths,
                resolve,
                _imports,
              );
            } else {
              await getIncludedPaths(
                depth: depth - 1,
                includedPaths: includedPaths,
                imports: imports,
                filePath: resolve.path,
                packageName: resolvePackage.name,
                packageRoot: resolvePackage.root.path,
                packageConfig: packageConfig,
                projectDirectory: projectDirectory,
              );
            }
            imports.add('import \'$uri\';');
          }
        } else if (!isDartSdk) {
          var fullName =
              path.normalize(path.absolute(path.dirname(filePath), uri));
          await getIncludedPaths(
            depth: depth - 1,
            includedPaths: includedPaths,
            imports: imports,
            filePath: fullName,
            packageName: packageName,
            packageRoot: packageRoot,
            packageConfig: packageConfig,
            projectDirectory: projectDirectory,
          );
        }
      } else if (child is ImportDirective) {
        if (uri.startsWith('package:') || isDartSdk) {
          imports.add(child.toString());
        } else {
          var fullName =
              path.normalize(path.absolute(path.dirname(filePath), uri));

          fullName = fullName
              .substring(
                  fullName.indexOf('.dart_tool') + '.dart_tool'.length + 1)
              .replaceAll(path.separator, '/');
          fullName = fullName.replaceAll('$packageName/lib', packageName);
          imports.add('import \'package:$fullName\';');
        }
      }
    }
  }
}

Future<void> _resolveCopyPackage(
  Directory projectDirectory,
  Package resolvePackage,
  int depth,
  List<String> includedPaths,
  Uri resolve,
  Set<String> imports,
) async {
  if (depth == 0) {
    return;
  }

  var copyPackageRoot = path.join(
    projectDirectory.path,
    '.dart_tool',
    resolvePackage.name,
  );
  Directory directory = Directory(copyPackageRoot);
  if (!directory.existsSync()) {
    copyAndPackageGet(
      projectDirectory: projectDirectory,
      packageName: resolvePackage.name,
      copyForm: resolvePackage.root.path,
    );
  }

  var copyPackageConfig = await findPackageConfig(Directory(copyPackageRoot));
  await getIncludedPaths(
    depth: depth,
    includedPaths: includedPaths,
    imports: imports,
    filePath: path.join(
      copyPackageRoot,
      resolve.path.replaceAll(resolvePackage.root.path, ''),
    ),
    packageName: resolvePackage.name,
    packageRoot: copyPackageRoot,
    packageConfig: copyPackageConfig!,
    projectDirectory: projectDirectory,
  );
}
