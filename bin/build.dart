// ignore_for_file: avoid_print

import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:dart_style/dart_style.dart';

DartFormatter _dartFormatter = DartFormatter();
Map<String, String> _fixes = <String, String>{
  '''class AppGeneratedModule extends GeneratedModule {''': '''
int _kDefaultSemanticIndexCallback(Widget _, int localIndex) => localIndex;
class AppGeneratedModule extends GeneratedModule {''',
};
void main() async {
  Directory projectDirectory = Directory.current;
  while (!projectDirectory.path.endsWith('fair_gallery')) {
    projectDirectory = projectDirectory.parent;
  }

  processRun(
    executable: 'flutter',
    arguments: 'clean',
    workingDirectory: projectDirectory.path,
  );

  processRun(
    executable: 'flutter',
    arguments: 'packages get',
    workingDirectory: projectDirectory.path,
  );

  final File file = File(path.join(
    projectDirectory.path,
    'lib',
    'src',
    'generated.fair.dart',
  ));
  if (file.existsSync()) {
    file.deleteSync();
  }

  // flutter pub run build_runner build --delete-conflicting-outputs

  processRun(
    executable: 'flutter',
    arguments: 'pub run build_runner build --delete-conflicting-outputs',
    workingDirectory: projectDirectory.path,
  );

  if (file.existsSync()) {
    String content = file.readAsStringSync();
    for (final String key in _fixes.keys) {
      content = content.replaceAll(key, _fixes[key]!);
    }
    file.writeAsStringSync(_dartFormatter.format(content));
  }

  // cp -r build/fair assets/

  // processRun(
  //   executable: 'cp',
  //   arguments: '-r build/fair assets/',
  //   workingDirectory: projectDirectory.path,
  // );

  processRun(
    executable: 'rm',
    arguments: '-rf assets/fair',
    workingDirectory: projectDirectory.path,
  );

  processRun(
    executable: 'mkdir',
    arguments: 'assets/fair',
    workingDirectory: projectDirectory.path,
  );

  Directory buildFair = Directory(path.join('build', 'fair'));

  for (var file in buildFair.listSync()) {
    var name = path.basename(file.path);
    if (file is File &&
        (name.endsWith('.js') ||
            name.endsWith('.bin') ||
            name.endsWith('.json'))) {
      // copy to assets/fair
      file.copySync(path.join(projectDirectory.path, 'assets', 'fair', name));
    }
  }
}

void processRun({
  required String executable,
  required String arguments,
  bool runInShell = false,
  String? workingDirectory,
}) {
  final ProcessResult result = Process.runSync(
    executable,
    arguments.split(' '),
    runInShell: runInShell,
    workingDirectory: workingDirectory,
  );
  if (result.exitCode != 0) {
    print('${result.stdout}\n');
    // print(ansi.red.wrap('${result.stderr}'));

    //throw Exception(result.stderr);
  }
  print('${result.stdout}\n');
}
