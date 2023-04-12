// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as path;
import 'package:fair_dart2dsl/src/widget.dart';
import 'package:fair_dart2dsl/src/transformer.dart';
import 'package:analyzer/dart/analysis/analysis_context.dart';
import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/element/type.dart';

import 'function_domain.dart';
import 'utils.dart';

DartFormatter _dartFormatter = DartFormatter();
Future<void> createBindings({
  required Directory projectDirectory,
  required List<String> includedPaths,
  required String fileName,
  required String imports,
  required Map<String, String> fixes,
  required String codes,
  required String functionDomainImports,
  required Map<String, String> functionDomainFixes,
  // FunctionType 的 fullElement
  required Set<String> functionDomainSkips,
  required Set<String> componentSkips,
}) async {
  var collection = AnalysisContextCollection(includedPaths: includedPaths);

  var components = <ComponentParts>[];
  var transformer = TransformProxy();
  // skip some folders
  var skip = <String>[
    // 'scheduler',
    // 'semantics',
  ];
  for (final AnalysisContext context in collection.contexts) {
    for (final filePath in context.contextRoot.analyzedFiles()) {
      var dirname = path.dirname(filePath);
      if (skip.any((element) => dirname.endsWith(element))) {
        continue;
      }
      if (filePath.endsWith('.dart') &&
          (transformer.skipSource
                  .indexWhere((skip) => filePath.endsWith(skip)) ==
              -1)) {
        var w = await processFile(context, filePath, analysisAllClasses: true);
        if (w?.components?.isNotEmpty != true) {
          continue;
        }
        if (componentSkips.contains(w?.clzName)) {
          continue;
        }
        components.add(w!);
      }
    }
  }

  Set<String> allImports = <String>{};
  Set<String> lines = <String>{};
  Set<String> flutterMapping = <String>{};
  Set<String> flutterComponents = <String>{};
  Map<String, FunctionType> functions = <String, FunctionType>{};
  int widgetCount = 0;
  int apiCount = 0;
  for (var component in components) {
    if (component.components != null) {
      for (var element in component.components!) {
        if (element.isWidget!) {
          widgetCount++;
        } else {
          apiCount++;
        }
        flutterMapping.add('\'${element.name}\': ${element.isWidget},');
      }
    }

    if (component.imports != null) {
      for (var import in component.imports!) {
        allImports.add('import \'$import\';');
      }
    }

    if (component.lines != null) {
      for (var line in component.lines!) {
        lines.add(line);
      }
    }

    if (component.body != null) {
      flutterComponents.add(component.body!);
    }

    for (var element in component.functionParameters) {
      var name = element.name!;
      if (name.endsWith('?')) {
        name = name.substring(0, name.length - 1);
      }
      functions[name] = element.functionType!;
    }
  }

  // {
  //   "frameworkVersion": "3.3.9",
  //   "channel": "stable",
  //   "repositoryUrl": "https://github.com/flutter/flutter.git",
  //   "frameworkRevision": "b8f7f1f9869bb2d116aa6a70dbeac61000b52849",
  //   "frameworkCommitDate": "2022-11-23 06:43:51 +0900",
  //   "engineRevision": "8f2221fbef28b478debb78dd233f5250b220ca99",
  //   "dartSdkVersion": "2.18.5",
  //   "devToolsVersion": "2.15.0",
  //   "flutterRoot": ""
  // }

  var flutterVersion = jsonDecode(
    processRun(executable: 'flutter', arguments: '--version --machine'),
  );

  createFunctionDomain(
    projectDirectory: projectDirectory,
    functions: functions,
    fileName: fileName,
    imports: functionDomainImports,
    fixes: functionDomainFixes,
    skips: functionDomainSkips,
    flutterVersion: flutterVersion,
  );

  var sortLines = lines.toList()
    ..sort((a, b) =>
        a.startsWith('import') ? -1 : (b.startsWith('import') ? 1 : 0));

  allImports.addAll(imports.split('\n'));

  var fileContent = _template
      .replaceAll(
        '{0}',
        allImports.join('\n'),
      )
      .replaceAll(
        '{1}',
        sortLines.join('\n'),
      )
      .replaceAll(
        '{2}',
        codes,
      )
      .replaceAll(
        '{3}',
        flutterComponents.join('\n'),
      )
      .replaceAll(
        '{4}',
        flutterMapping.join('\n'),
      )
      .replaceAll(
        '{5}',
        flutterVersion['frameworkVersion'],
      )
      .replaceAll(
        '{6}',
        flutterVersion['dartSdkVersion'],
      )
      .replaceAll(
        '{7}',
        widgetCount.toString(),
      )
      .replaceAll(
        '{8}',
        apiCount.toString(),
      )
      .replaceAll(
        '{9}',
        fileName.toLowerCase(),
      );
  fileContent = _dartFormatter.format(fileContent);
  for (var key in fixes.keys) {
    fileContent = fileContent.replaceAll(key, fixes[key]!);
  }

  fileContent = _dartFormatter.format(fileContent);

  final File file = File(path.join(
    projectDirectory.path,
    'lib',
    'src',
    'generated_module',
    '${fileName.toLowerCase()}.bindings.dart',
  ));
  if (!file.existsSync()) {
    file.createSync(recursive: true);
  }
  file.writeAsStringSync(fileContent);

  print(
      'create widget bindings: $widgetCount , api bindings: $apiCount , function domains: ${functions.length};');
}

String _template = '''
// flutterVersion = '{5}'
// dartVersion = '{6}'
// widgetCount = {7}
// apiCount = {8}
// ignore_for_file: unused_import, unnecessary_import, implementation_imports, unused_shown_name, deprecated_member_use, prefer_single_quotes, unused_element, unused_field, duplicate_import, prefer_const_constructors, invalid_use_of_visible_for_testing_member
{0}
import 'package:fair/fair.dart';
{1}

{2}
const String flutterVersion = '{5}';
const String dartVersion = '{6}';
const int widgetCount = {7};
const int apiCount = {8};
/// {9}Components
Map<String, dynamic> {9}Components= {
  {3}
};

/// {9}Mapping
Map<String, bool> {9}Mapping= {
  {4}
};
''';
