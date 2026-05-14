import 'dart:io';

extension FileExtensions on File {
  String get displayName {
    var name = path.split(Platform.pathSeparator).last;
    name = name.replaceFirst('birdbreeder-', '');
    for (final ext in const ['.bbb.zip', '.sqlite', '.db', '.zip']) {
      if (name.toLowerCase().endsWith(ext)) {
        name = name.substring(0, name.length - ext.length);
        break;
      }
    }
    return name;
  }

  String get sizeString {
    final bytes = lengthSync();
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }
}
