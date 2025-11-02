import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/finances_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/finance.dart';
import 'package:birdbreeder/features/birds/domain/models/finance_category.dart';
import 'package:birdbreeder/features/birds/domain/models/finance_category_kind.dart';
import 'package:birdbreeder/features/finances/models/finances_actions.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/utils.dart';
import 'package:birdbreeder/shared/widgets/category_avatar.dart';
import 'package:birdbreeder/shared/widgets/color_chip.dart';
import 'package:birdbreeder/shared/widgets/meta_chip.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class FinanceEntryCard extends StatelessWidget {
  const FinanceEntryCard({
    super.key,
    required this.finance,
    required this.category,
  });
  final Finance finance;
  final FinanceCategory category;

  @override
  Widget build(BuildContext context) {
    final kind = category.kind;
    final kd = kind.getDisplayData(context);
    final catColor = hexToColor(category.color);

    final amountText = (kind == FinanceCategoryKind.income ? '+' : '-') +
        finance.amount.toStringAsFixed(2);

    final dateText = context.formatDate(finance.date);

    // Subtile Gradient-Füllung, harmonisiert mit Surface
    final surface = Theme.of(context).colorScheme.surface;
    final gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color.alphaBlend(catColor.withValues(alpha: 0.10), surface),
        Color.alphaBlend(catColor.withValues(alpha: 0.02), surface),
      ],
    );

    final birdLabel = finance.birdResolved?.ringNumber;

    final radius = BorderRadius.circular(14);

    return Card(
      elevation: 1.5,
      shape: RoundedRectangleBorder(borderRadius: radius),
      clipBehavior: Clip.antiAlias,
      surfaceTintColor: Colors.transparent,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Ink(
        decoration: BoxDecoration(gradient: gradient),
        child: InkWell(
          onTap: () => FinancesActions.edit.executeAction(context, finance),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                CategoryAvatar(cat: category),
                const SizedBox(width: 12),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    finance.title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: context.titleMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Wrap(
                              spacing: 8,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                MetaChip(icon: Icons.today, text: dateText),
                                ColorChip(
                                  text: category.name,
                                  color: kd.bg,
                                  fg: kd.fg,
                                ),
                                if (birdLabel != null && birdLabel.isNotEmpty)
                                  MetaChip(
                                    icon: AppIcons.birdAvatar,
                                    text: birdLabel,
                                  ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            if (finance.notes != null &&
                                finance.notes!.isNotEmpty)
                              Text(
                                finance.notes!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: context.bodyMedium?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant,
                                ),
                              ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            amountText,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: category.kind.color,
                                ),
                          ),
                          moreMenu<Finance>(
                            context,
                            finance,
                            FinancesActions.values.map((action) {
                              return (
                                icon: action.icon,
                                label: action.getLabel(context),
                                action: action.executeAction,
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
