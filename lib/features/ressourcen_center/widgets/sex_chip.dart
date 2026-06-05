import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';

/// Compact circular badge showing the sex symbol (♂/♀/?) used in resource
/// detail bird rows and stat cells.
class SexChip extends StatelessWidget {
  const SexChip({
    required this.sex,
    super.key,
    this.size = 26,
    this.fontSize = 12,
  });

  final Sex sex;
  final double size;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final color = sex.colorOf(context);
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        shape: BoxShape.circle,
        border: Border.all(color: color, width: 1.5),
      ),
      alignment: Alignment.center,
      child: Text(
        sex.symbol,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w700,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
