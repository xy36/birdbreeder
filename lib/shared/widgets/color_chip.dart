import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';

class ColorChip extends StatelessWidget {
  const ColorChip({
    required this.text,
    required this.bg,
    required this.fg,
    super.key,
  });
  final String text;
  final Color bg;
  final Color fg;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        text,
        style: context.bodySmall?.copyWith(
          color: fg,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
