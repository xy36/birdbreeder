import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/finance_category.dart';
import 'package:birdbreeder/shared/utils.dart';

class CategoryAvatar extends StatelessWidget {
  const CategoryAvatar({
    super.key,
    required this.cat,
    this.size = 40,
  });

  final FinanceCategory cat;

  final double size;

  @override
  Widget build(BuildContext context) {
    final kd = cat.kind.getDisplayData(context);
    final catColor = hexToColor(cat.color);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: catColor,
        border: Border.all(color: kd.fg, width: 2),
      ),
      child: Icon(
        kd.icon,
        size: size / 2,
        color: catColor.computeLuminance() > 0.5 ? Colors.black : Colors.white,
      ),
    );
  }
}
