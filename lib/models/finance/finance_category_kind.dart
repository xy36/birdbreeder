import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/theme/app_colors.dart';

enum FinanceCategoryKind {
  income,
  expense;

  /// Domain color, sourced from the active theme's [AppColors] extension.
  Color colorOf(BuildContext context) {
    final c = context.appColors;
    return switch (this) {
      FinanceCategoryKind.income => c.income,
      FinanceCategoryKind.expense => c.expense,
    };
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
