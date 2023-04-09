// ignore_for_file: invalid_use_of_protected_member, depend_on_referenced_packages

import 'dart:io';
import 'package:dart_style/dart_style.dart';
import 'package:package_config/package_config.dart';
import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';
import 'package:analyzer/dart/analysis/features.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'util/utils.dart';

DartFormatter _dartFormatter = DartFormatter();

List<String> _skip = <String>[
  'cupertino_icons',
  'flutter',
  'intl',
  'photo_manager',
  'ff_annotation_route_library',
  'http_client_helper',
];

Future<void> main(List<String> args) async {
  Directory projectDirectory = getProjectDirectory(pubGet: true);
  final pubspecLockFile =
      File(path.join(projectDirectory.path, 'pubspec.lock'));

  if (!pubspecLockFile.existsSync()) {
    return;
  }
  List<String> imports = <String>[];
  var yaml = loadYaml(pubspecLockFile.readAsStringSync());
  var packages = yaml['packages'] as YamlMap;
  for (var key in packages.keys) {
    if (_skip.contains(key) || key.toString().contains('fair')) {
      continue;
    }
    var package = packages[key];
    var dependency = package['dependency'];
    if (dependency != null && dependency.toString() == 'direct main') {
      imports.add('\'package:$key/$key.dart\'');
    }
  }

  final File file =
      File(path.join(projectDirectory.path, 'bin', 'binding', 'binding.dart'));
  if (!file.existsSync()) {
    file.createSync(recursive: true);
  }
  if (imports.isNotEmpty) {
    final result = parseFile(
      path: file.path,
      featureSet: FeatureSet.latestLanguageVersion(),
    );
    var packageConfig = await findPackageConfig(Directory.current);
    assert(packageConfig != null);
    Set<String> projectPackages = <String>{};

    for (var child in result.unit.directives) {
      if (child is ImportDirective) {
        var uri = child.uri.toString();
        // 去掉引号
        uri = uri.substring(1, uri.length - 1);
        assert(uri.startsWith('package:'));
        var resolve = packageConfig!.resolve(Uri.parse(uri));
        if (resolve!.path.startsWith(projectDirectory.path)) {
          projectPackages.add(child.toString());
        }
      }
    }

    file.writeAsStringSync(_dartFormatter.format('''
// ignore_for_file: unused_import
// 三方库
${imports.map((e) => 'import $e;').join('\n')}
// 项目中的文件
${projectPackages.toList().join('\n')}
'''));
  }
}
