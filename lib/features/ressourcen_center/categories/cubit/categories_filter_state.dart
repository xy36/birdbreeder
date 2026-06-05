import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_filter_state.freezed.dart';

enum FinCategoryFilter { all, income, expense }

enum CategorySortField { name, created, kind }

@freezed
abstract class CategoriesFilterState with _$CategoriesFilterState {
  const factory CategoriesFilterState({
    @Default(FinCategoryFilter.all) FinCategoryFilter typeFilter,
    @Default('') String query,
    @Default(CategorySortField.name) CategorySortField sortField,
    @Default(true) bool sortAsc,
  }) = _CategoriesFilterState;
}
