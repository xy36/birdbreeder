import 'package:birdbreeder/features/birds/domain/models/finance_category_kind.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_category.freezed.dart';
part 'finance_category.g.dart';

@freezed
class FinanceCategory with _$FinanceCategory {
  const factory FinanceCategory({
    required String id,
    required String name,
    required String color,
    required FinanceCategoryKind kind,
  }) = _FinancesCategories;

  factory FinanceCategory.income({
    required String name,
    required String color,
  }) {
    return FinanceCategory.create(
      name: name,
      color: color,
      kind: FinanceCategoryKind.income,
    );
  }

  factory FinanceCategory.expense({
    required String name,
    required String color,
  }) {
    return FinanceCategory.create(
      name: name,
      color: color,
      kind: FinanceCategoryKind.expense,
    );
  }

  factory FinanceCategory.create({
    required String name,
    required String color,
    required FinanceCategoryKind kind,
  }) {
    return FinanceCategory(
      id: '',
      name: name,
      color: color,
      kind: kind,
    );
  }

  factory FinanceCategory.fromJson(Map<String, dynamic> json) =>
      _$FinanceCategoryFromJson(json);
}
