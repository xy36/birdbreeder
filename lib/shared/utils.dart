import 'package:birdbreeder/common_imports.dart';

Color hexToColor(String hex) {
  var h = hex;
  h = h.replaceAll('#', '');
  if (h.length == 6) h = 'FF$h';
  return Color(int.parse(h, radix: 16));
}

Color bestOnColor(Color c) =>
    c.computeLuminance() > 0.5 ? Colors.black : Colors.white;
