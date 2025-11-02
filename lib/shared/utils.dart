import 'package:birdbreeder/common_imports.dart';

Color hexToColor(String hex) {
  hex = hex.replaceAll('#', '');
  if (hex.length == 6) hex = 'FF$hex';
  return Color(int.parse(hex, radix: 16));
}

Color bestOnColor(Color c) =>
    c.computeLuminance() > 0.5 ? Colors.black : Colors.white;
