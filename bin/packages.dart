// ignore_for_file: invalid_use_of_protected_member, depend_on_referenced_packages

import 'dart:io';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';

DartFormatter _dartFormatter = DartFormatter();

List<String> _skip = <String>[
  'cupertino_icons',
  'flutter',
  'intl',
  'photo_manager',
  'ff_annotation_route_library',
  'http_client_helper',
];

/// build dart core sugar
Future<void> main(List<String> args) async {
  Directory projectDirectory = Directory.current;
  while (!projectDirectory.path.endsWith('fair_gallery')) {
    projectDirectory = projectDirectory.parent;
  }
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

  final File file = File(path.join(
    projectDirectory.path,
    'lib',
    'packages.dart',
  ));
  if (!file.existsSync()) {
    file.createSync(recursive: true);
  }
  if (imports.isNotEmpty) {
    file.writeAsStringSync(
        _dartFormatter.format(_template.replaceAll('{0}', imports.join(','))));
  }
}

String _template = '''
const List<String> packages = <String>[
  {0},
];
''';
