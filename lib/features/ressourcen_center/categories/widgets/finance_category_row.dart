import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_overview_ui.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/finance/finance_category_kind.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/category_avatar.dart';
import 'package:birdbreeder/theme/app_colors.dart';

class FinanceCategoryRow extends StatelessWidget {
  const FinanceCategoryRow({
    required this.category,
    required this.usage,
    required this.last,
    required this.onTap,
    super.key,
  });

  final FinanceCategory category;
  final int usage;
  final bool last;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isIncome = category.kind == FinanceCategoryKind.income;
    final accent =
        isIncome ? context.appColors.income : context.appColors.expense;
    final bg = accent.withValues(alpha: 0.15);

    return OverviewRow(
      onTap: onTap,
      last: last,
      leading: CategoryAvatar(cat: category),
      title: Text(category.name),
      subtitle: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 1),
            decoration: BoxDecoration(
              color: bg,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              isIncome
                  ? context.tr.finances.categories.pill.income
                  : context.tr.finances.categories.pill.expense,
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5,
                color: accent,
              ),
            ),
          ),
        ],
      ),
      trailing: Container(
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
        decoration: BoxDecoration(
          color: usage > 0 ? cs.surfaceContainer : Colors.transparent,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              AppIcons.receiptLongOutlined,
              size: 11,
              color: cs.onSurfaceVariant,
            ),
            const SizedBox(width: 4),
            Text(
              '$usage',
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 11,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.3,
                color: cs.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
