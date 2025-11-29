import 'package:birdbreeder/common_imports.dart';

enum FinanceCategoryKind {
  income,
  expense;

  /// separated colors for income and expense
  Color get color {
    switch (this) {
      case FinanceCategoryKind.income:
        return Colors.green;
      case FinanceCategoryKind.expense:
        return Colors.red;
    }
  }

  ({Color bg, Color fg, String label}) getDisplayData(
    BuildContext ctx,
  ) {
    final s = Theme.of(ctx).colorScheme;
    return switch (this) {
      FinanceCategoryKind.income => (
          bg: s.primaryFixed,
          fg: s.onPrimaryFixed,
          label: ctx.tr.finances.kind.income
        ),
      FinanceCategoryKind.expense => (
          bg: s.secondaryFixed,
          fg: s.onSecondaryFixed,
          label: ctx.tr.finances.kind.expense
        ),
    };
  }
}
