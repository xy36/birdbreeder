import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/finances_categories_extension.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';

class CategoryAvatar extends StatelessWidget {
  const CategoryAvatar({
    required this.cat,
    super.key,
    this.size = 40,
  });

  final FinanceCategory cat;

  final double size;

  /// Builds a 1–2 letter abbreviation from the category name.
  static String initialsFor(String name) {
    final parts =
        name.trim().split(RegExp(r'\s+')).where((s) => s.isNotEmpty).toList();
    if (parts.isEmpty) return '?';
    if (parts.length == 1) {
      final p = parts.first;
      return (p.length >= 2 ? p.substring(0, 2) : p).toUpperCase();
    }
    return (parts.first[0] + parts[1][0]).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final kd = cat.kind.getDisplayData(context);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: cat.bgColor,
        border: Border.all(color: kd.fg, width: 2),
      ),
      alignment: Alignment.center,
      child: Text(
        initialsFor(cat.name),
        style: TextStyle(
          color: cat.fgColor,
          fontWeight: FontWeight.bold,
          fontSize: size * 0.4,
        ),
      ),
    );
  }
}
