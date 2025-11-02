import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';

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

  ({Color bg, Color fg, IconData icon, String label}) getDisplayData(
    BuildContext ctx,
  ) {
    final s = Theme.of(ctx).colorScheme;
    return switch (this) {
      FinanceCategoryKind.income => (
          bg: s.primaryFixed,
          fg: s.onPrimaryFixed,
          icon: AppIcons.income,
          label: ctx.tr.finances.kind.income
        ),
      FinanceCategoryKind.expense => (
          bg: s.secondaryFixed,
          fg: s.onSecondaryFixed,
          icon: AppIcons.expense,
          label: ctx.tr.finances.kind.expense
        ),
    };
  }
}
