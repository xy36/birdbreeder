import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/finances_extension.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/theme/app_colors.dart';
import 'package:intl/intl.dart';

class FinanceSummaryBar extends StatelessWidget {
  const FinanceSummaryBar({required this.finances, super.key});
  final List<Finance> finances;

  String _fmt(double v) =>
      NumberFormat.currency(locale: 'de_DE', symbol: '€').format(v);

  @override
  Widget build(BuildContext context) {
    final net = finances.net;
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
          cell(tr.kind.income, _fmt(finances.income), context.appColors.income),
          cell(
            tr.kind.expense,
            _fmt(finances.expense),
            context.appColors.expense,
          ),
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
