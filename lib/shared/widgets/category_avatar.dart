import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/finances_categories_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/finance_category.dart';

class CategoryAvatar extends StatelessWidget {
  const CategoryAvatar({
    required this.cat,
    super.key,
    this.size = 40,
  });

  final FinanceCategory cat;

  final double size;

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
      child: CircleAvatar(
        backgroundColor: cat.bgColor,
        child: Text(
          cat.name.isNotEmpty ? cat.name[0].toUpperCase() : '?',
          style: TextStyle(
            color: cat.fgColor,
            fontWeight: FontWeight.bold,
            fontSize: size * 0.5,
          ),
        ),
      ),
    );
  }
}
