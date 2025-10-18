import 'package:freezed_annotation/freezed_annotation.dart';

part 'finances_categories.freezed.dart';
part 'finances_categories.g.dart';

enum FinancesCategoriesKind {
  income,
  expense;
}

@freezed
class FinancesCategories with _$FinancesCategories {
  const factory FinancesCategories({
    required String id,
    required String name,
    required String color,
    required FinancesCategoriesKind kind,
  }) = _FinancesCategories;

  factory FinancesCategories.income({
    required String name,
    required String color,
  }) {
    return FinancesCategories.create(
      name: name,
      color: color,
      kind: FinancesCategoriesKind.income,
    );
  }

  factory FinancesCategories.expense({
    required String name,
    required String color,
  }) {
    return FinancesCategories.create(
      name: name,
      color: color,
      kind: FinancesCategoriesKind.expense,
    );
  }

  factory FinancesCategories.create({
    required String name,
    required String color,
    required FinancesCategoriesKind kind,
  }) {
    return FinancesCategories(
      id: '',
      name: name,
      color: color,
      kind: kind,
    );
  }

  factory FinancesCategories.fromJson(Map<String, dynamic> json) =>
      _$FinancesCategoriesFromJson(json);
}
