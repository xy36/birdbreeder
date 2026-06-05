import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/ressourcen_center/categories/categories_details_sheet.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_ui.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/finance/finance_category_kind.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/category_avatar.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';
import 'package:birdbreeder/theme/app_colors.dart';

@RoutePage(name: 'CategoryDetailRoute')
class CategoryDetailPage extends StatelessWidget {
  const CategoryDetailPage({required this.category, super.key});

  final FinanceCategory category;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final res = context.watch<BirdBreederCubit>().state.birdBreederResources;
    final current = res.financesCategories.firstWhere(
      (c) => c.id == category.id,
      orElse: () => category,
    );
    final bookings =
        res.finances.where((f) => f.categoryId == current.id).toList()
          ..sort((a, b) {
            final da = a.date ?? a.created ?? DateTime(2000);
            final db = b.date ?? b.created ?? DateTime(2000);
            return db.compareTo(da);
          });
    final isIncome = current.kind == FinanceCategoryKind.income;
    final accent =
        isIncome ? context.appColors.income : context.appColors.expense;

    final now = DateTime.now();
    final spark = List<double>.generate(6, (i) {
      final monthOffset = 5 - i;
      final target = DateTime(now.year, now.month - monthOffset);
      return bookings.where((f) {
        final d = f.date ?? f.created;
        if (d == null) return false;
        return d.year == target.year && d.month == target.month;
      }).fold<double>(0, (sum, f) => sum + f.amount.abs());
    });
    final sum = spark.fold<double>(0, (a, b) => a + b);
    final maxSpark = spark.fold<double>(0, (a, b) => a > b ? a : b);
    final avg = bookings.isEmpty ? 0.0 : sum / 6;

    return ResourceScaffold(
      titleMain: current.name.isNotEmpty
          ? current.name
          : context.tr.finances.categories.detail_title,
      titleSub: isIncome
          ? context.tr.finances.categories.pill.income
          : context.tr.finances.categories.pill.expense,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: cs.surface,
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
              alignment: Alignment.center,
              child: CategoryAvatar(cat: current, size: 72),
            ),
            StatsStrip(
              cells: [
                StatCell(
                  value: '${bookings.length}',
                  label: context.tr.finances.categories.detail.bookings_label,
                ),
                StatCell(
                  value: '${isIncome ? '+' : '−'}${sum.toStringAsFixed(0)}€',
                  label: context.tr.finances.categories.detail.six_months,
                  color: accent,
                ),
                StatCell(
                  value: '${avg.toStringAsFixed(0)}€',
                  label: context.tr.finances.categories.detail.avg_per_month,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionLabel(
                    icon: AppIcons.showChart,
                    label: context
                        .tr.finances.categories.detail.course_six_months,
                  ),
                  _SparkCard(
                    spark: spark,
                    max: maxSpark,
                    accent: accent,
                    sum: sum,
                    isIncome: isIncome,
                  ),
                  SectionLabel(
                    icon: AppIcons.receiptLongOutlined,
                    label:
                        context.tr.finances.categories.detail.recent_bookings,
                    count: bookings.length,
                  ),
                  if (bookings.isEmpty)
                    _empty(
                      context,
                      context.tr.finances.categories.detail.no_bookings,
                    )
                  else
                    Container(
                      decoration: BoxDecoration(
                        color: cs.surface,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: cs.outlineVariant),
                      ),
                      child: Column(
                        children: [
                          for (var i = 0; i < bookings.length && i < 8; i++)
                            _BookingRow(
                              booking: bookings[i],
                              last: i == bookings.length - 1 || i == 7,
                              isIncome: isIncome,
                            ),
                        ],
                      ),
                    ),
                  SectionLabel(
                    icon: AppIcons.notes,
                    label: context.tr.common.notes,
                  ),
                  NotesCard(text: current.notes),
                  DetailActionRow(
                    onEdit: () => openSheet<void>(
                      context,
                      CategoriesDetailsSheet(initialCategory: current),
                    ),
                    secondaryIcon: AppIcons.delete,
                    onSecondary: () =>
                        _confirmDelete(context, current, bookings.length),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _confirmDelete(
    BuildContext context,
    FinanceCategory category,
    int usage,
  ) {
    final cubit = context.read<BirdBreederCubit>();
    final router = context.router;
    final tr = context.tr;
    DeleteDialog.show(
      context: context,
      title: tr.finances.categories.delete,
      content: usage > 0
          ? tr.resources.delete.with_usage(Usage: usage)
          : tr.dialog.delete_entry.content,
      onDelete: () async {
        await cubit.deleteFinancesCategory(category);
        router.pop();
      },
    );
  }

  Widget _empty(BuildContext context, String label) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 22),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: cs.outlineVariant),
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: cs.onSurfaceVariant,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}

class _SparkCard extends StatelessWidget {
  const _SparkCard({
    required this.spark,
    required this.max,
    required this.accent,
    required this.sum,
    required this.isIncome,
  });

  final List<double> spark;
  final double max;
  final Color accent;
  final double sum;
  final bool isIncome;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final monthsTr = context.tr.finances.categories.months_short;
    final months = [
      monthsTr.dec,
      monthsTr.jan,
      monthsTr.feb,
      monthsTr.mar,
      monthsTr.apr,
      monthsTr.may,
    ];
    return Container(
      padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: cs.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${isIncome ? '+' : '−'}${sum.toStringAsFixed(0)}€',
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: accent,
                  height: 1,
                ),
              ),
              const SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  'letzte 6 Monate',
                  style: TextStyle(
                    fontSize: 11,
                    color: cs.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (var i = 0; i < spark.length; i++)
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: i == spark.length - 1 ? 0 : 6,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: LayoutBuilder(
                              builder: (_, c) {
                                final h = max <= 0
                                    ? 3.0
                                    : (spark[i] / max * c.maxHeight)
                                        .clamp(3.0, c.maxHeight);
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: h,
                                      decoration: BoxDecoration(
                                        color: i == spark.length - 1
                                            ? accent
                                            : accent.withValues(alpha: 0.55),
                                        borderRadius:
                                            const BorderRadius.vertical(
                                          top: Radius.circular(4),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            months[i],
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.4,
                              color: cs.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BookingRow extends StatelessWidget {
  const _BookingRow({
    required this.booking,
    required this.last,
    required this.isIncome,
  });

  final Finance booking;
  final bool last;
  final bool isIncome;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final d = booking.date ?? booking.created;
    final dateStr = d == null
        ? '—'
        : '${d.day.toString().padLeft(2, '0')}.${d.month.toString().padLeft(2, '0')}';
    final amount = isIncome ? booking.amount.abs() : -booking.amount.abs();
    final isPositive = amount >= 0;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        border:
            last ? null : Border(bottom: BorderSide(color: cs.outlineVariant)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            child: Text(
              dateStr,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: cs.onSurfaceVariant,
              ),
            ),
          ),
          Expanded(
            child: Text(
              booking.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: cs.onSurface,
              ),
            ),
          ),
          Text(
            '${isPositive ? '+' : ''}${amount.toStringAsFixed(2)}€',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: isPositive
                  ? context.appColors.income
                  : context.appColors.expense,
            ),
          ),
        ],
      ),
    );
  }
}
