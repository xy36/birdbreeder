import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/finance_category.dart';
import 'package:birdbreeder/features/birds/domain/models/finance_category_kind.dart';

extension FinancesCategoriesListExtension on List<FinanceCategory> {
  FinanceCategory? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}

extension FinanceCategoryExtension on FinanceCategory {
  Color get colorAsColor => Color(int.parse(color));

  bool get isIncome => kind == FinanceCategoryKind.income;
  bool get isExpense => kind == FinanceCategoryKind.expense;
}
