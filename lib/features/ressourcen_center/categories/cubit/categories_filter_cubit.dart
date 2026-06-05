import 'package:birdbreeder/features/ressourcen_center/categories/cubit/categories_filter_state.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/finance/finance_category_kind.dart';
import 'package:birdbreeder/shared/utils/natural_compare.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesFilterCubit extends Cubit<CategoriesFilterState> {
  CategoriesFilterCubit() : super(const CategoriesFilterState());

  void setTypeFilter(FinCategoryFilter f) =>
      emit(state.copyWith(typeFilter: f));

  void setQuery(String q) => emit(state.copyWith(query: q));

  void setSort(CategorySortField field, bool ascending) =>
      emit(state.copyWith(sortField: field, sortAsc: ascending));

  void reset() => emit(const CategoriesFilterState());

  List<FinanceCategory> filterCategories(List<FinanceCategory> cats) {
    final q = state.query.trim().toLowerCase();
    final filtered = cats.where((c) {
      switch (state.typeFilter) {
        case FinCategoryFilter.income:
          if (c.kind != FinanceCategoryKind.income) return false;
        case FinCategoryFilter.expense:
          if (c.kind != FinanceCategoryKind.expense) return false;
        case FinCategoryFilter.all:
          break;
      }
      if (q.isEmpty) return true;
      return c.name.toLowerCase().contains(q);
    }).toList();
    _sort(filtered);
    return filtered;
  }

  void _sort(List<FinanceCategory> list) {
    final dir = state.sortAsc ? 1 : -1;
    list.sort((a, b) {
      switch (state.sortField) {
        case CategorySortField.name:
          return dir * naturalCompare(a.name, b.name);
        case CategorySortField.created:
          final ac = a.created ?? DateTime(1970);
          final bc = b.created ?? DateTime(1970);
          return dir * ac.compareTo(bc);
        case CategorySortField.kind:
          return dir * a.kind.index.compareTo(b.kind.index);
      }
    });
  }
}
