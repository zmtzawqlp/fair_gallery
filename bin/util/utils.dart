// ignore_for_file: avoid_print

import 'dart:io';
import 'package:path/path.dart' as path;

String processRun({
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
  print(executable + ' ' + arguments);
  if (result.exitCode != 0) {
    print('${result.stdout}\n');
    // print(ansi.red.wrap('${result.stderr}'));

    //throw Exception(result.stderr);
  }
  print('${result.stdout}\n');
  return result.stdout;
}

void copyAndPackageGet({
  required Directory projectDirectory,
  required String packageName,
  required String copyForm,
}) {
  final destination = Directory(
    path.join(
      projectDirectory.path,
      '.dart_tool',
      packageName,
    ),
  );
  if (!destination.existsSync()) {
    destination.createSync(recursive: true);
  }
  Directory(copyForm).copyTo(
    destination,
    ignoreDirList: <String>[
      'example',
      'test',
    ],
  );
  // processRun(
  //     executable: 'cp',
  //     arguments: '-r $copyForm ${path.join(
  //       projectDirectory.path,
  //       '.dart_tool',
  //       packageName,
  //     )}');

  processRun(
    executable: 'flutter',
    arguments: 'packages get ${destination.path}',
  );
}

Directory getProjectDirectory({bool pubGet = true}) {
  Directory projectDirectory = Directory.current;
  String projectName = 'fair_gallery';
  while (!projectDirectory.path.endsWith(projectName)) {
    projectDirectory = projectDirectory.parent;
  }
  if (pubGet) {
    processRun(
      executable: 'flutter',
      arguments: 'clean ${projectDirectory.path}',
    );
    processRun(
      executable: 'flutter',
      arguments: 'packages get ${projectDirectory.path}',
    );
  }

  return projectDirectory;
}

extension DirectoryHelper on Directory {
  /// Recursively copies a directory + subdirectories into a target directory.
  /// Similar to Copy-Item in PowerShell.
  void copyTo(
    final Directory destination, {
    final List<String> ignoreDirList = const [],
    final List<String> ignoreFileList = const [],
  }) =>
      listSync().forEach((final entity) {
        if (entity is Directory) {
          if (ignoreDirList.contains(path.basename(entity.path))) {
            return;
          }
          final newDirectory = Directory(
            path.join(destination.absolute.path, path.basename(entity.path)),
          )..createSync();
          entity.absolute.copyTo(
            newDirectory,
            ignoreDirList: ignoreDirList,
            ignoreFileList: ignoreFileList,
          );
        } else if (entity is File) {
          if (ignoreFileList.contains(path.basename(entity.path))) {
            return;
          }
          entity.copySync(
            path.join(destination.path, path.basename(entity.path)),
          );
        }
      });
}

void dartFix() {
  processRun(executable: 'dart', arguments: 'fix --apply');
}
