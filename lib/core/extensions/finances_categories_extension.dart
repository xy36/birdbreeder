import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/finance_category.dart';
import 'package:birdbreeder/features/birds/domain/models/finance_category_kind.dart';
import 'package:birdbreeder/shared/utils.dart';

extension FinancesCategoriesListExtension on List<FinanceCategory> {
  FinanceCategory? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}

extension FinanceCategoryExtension on FinanceCategory {
  Color readableTextColor(Color background) {
    // Calculate luminance: 0 (black) -> 1 (white)
    final luminance = background.computeLuminance();

    // If background is bright, use black text; else white
    return luminance > 0.5 ? Colors.black : Colors.white;
  }

  Color get bgColor => hexToColor(color);
  Color get fgColor => readableTextColor(bgColor);

  bool get isIncome => kind == FinanceCategoryKind.income;
  bool get isExpense => kind == FinanceCategoryKind.expense;
}
