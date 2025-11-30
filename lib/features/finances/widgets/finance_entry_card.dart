import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/finances_categories_extension.dart';
import 'package:birdbreeder/core/extensions/finances_extension.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/finance/finance_category_kind.dart';
import 'package:birdbreeder/models/finance/finances_actions.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/color_chip.dart';
import 'package:birdbreeder/shared/widgets/meta_chip.dart';

class FinanceEntryCard extends StatelessWidget {
  const FinanceEntryCard({
    required this.finance,
    required this.category,
    super.key,
  });

  final Finance finance;
  final FinanceCategory category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isIncome = category.kind == FinanceCategoryKind.income;
    final amountPrefix = isIncome ? '+' : '-';

    final amountText = '$amountPrefix${finance.amount.toStringAsFixed(2)}';
    final dateText = context.formatDate(finance.date);
    final birdLabel = finance.birdResolved?.ringNumber;

    return Card(
      elevation: 1.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      clipBehavior: Clip.antiAlias,
      surfaceTintColor: Colors.transparent,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: InkWell(
        onTap: () => FinancesActions.edit.execute(context, finance),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // LEFT SECTION
                    Expanded(
                      child: _buildInfoSection(
                        context,
                        theme,
                        dateText,
                        birdLabel,
                      ),
                    ),

                    // RIGHT SECTION
                    _buildSideSection(
                      context,
                      theme,
                      amountText,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoSection(
    BuildContext context,
    ThemeData theme,
    String dateText,
    String? birdLabel,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          finance.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: context.titleMedium?.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 4),
        Wrap(
          spacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            ColorChip(
              text: category.name,
              bg: category.bgColor,
              fg: category.fgColor,
            ),
            MetaChip(icon: Icons.today, text: dateText),
            if (birdLabel?.isNotEmpty == true)
              MetaChip(icon: AppIcons.birdAvatar, text: birdLabel!),
          ],
        ),
        const SizedBox(height: 4),

        // Notes
        if ((finance.notes ?? '').isNotEmpty)
          Text(
            finance.notes!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: context.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
      ],
    );
  }

  Widget _buildSideSection(
    BuildContext context,
    ThemeData theme,
    String amountText,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          amountText,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: category.kind.color,
          ),
        ),
        FinancesActions.buildMenu(context, finance),
      ],
    );
  }
}
