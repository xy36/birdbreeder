import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/finances_extension.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/finance_category_kind.dart';
import 'package:birdbreeder/theme/app_colors.dart';
import 'package:intl/intl.dart';

class FinanceSummaryBar extends StatelessWidget {
  const FinanceSummaryBar({required this.finances, super.key});
  final List<Finance> finances;

  ({double income, double expense}) _totals() {
    var income = 0.0;
    var expense = 0.0;
    for (final f in finances) {
      switch (f.categoryResolved?.kind) {
        case FinanceCategoryKind.income:
          income += f.amount;
        case FinanceCategoryKind.expense:
          expense += f.amount;
        case null:
      }
    }
    return (income: income, expense: expense);
  }

  String _fmt(double v) =>
      NumberFormat.currency(locale: 'de_DE', symbol: '€').format(v);

  @override
  Widget build(BuildContext context) {
    final t = _totals();
    final net = t.income - t.expense;
    final scheme = Theme.of(context).colorScheme;
    final tr = context.tr.finances;

    Widget cell(String label, String value, Color color) {
      return Expanded(
        child: Column(
          children: [
            Text(label, style: Theme.of(context).textTheme.labelSmall),
            const SizedBox(height: 2),
            Text(
              value,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: color, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHighest,
        border: Border(
          top: BorderSide(color: scheme.outlineVariant),
          bottom: BorderSide(color: scheme.outlineVariant),
        ),
      ),
      child: Row(
        children: [
          cell(tr.kind.income, _fmt(t.income), context.appColors.income),
          cell(tr.kind.expense, _fmt(t.expense), context.appColors.expense),
          cell(
            tr.summary.net,
            _fmt(net),
            net >= 0 ? context.appColors.income : context.appColors.expense,
          ),
        ],
      ),
    );
  }
}
