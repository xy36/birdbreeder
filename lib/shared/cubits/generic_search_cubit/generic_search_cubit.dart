import 'package:birdbreeder/shared/cubits/generic_search_cubit/base_search.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class GenericSearchCubit<T> extends Cubit<BaseSearch> {
  GenericSearchCubit(
    this.fnFilter,
  ) : super(const BaseSearch());

  List<T> _allItems = [];

  /// The function used to filter items based on the search query.
  final bool Function(T item, String query) fnFilter;

  /// Resets the search state.
  void reset() => emit(const BaseSearch());

  /// Toggles the active state of the search.
  /// If search is active, it resets the query on toggle.
  void toggleActive() {
    if (state.isActive) {
      // If activating search, we want to reset the query
      reset();
    } else {
      emit(state.copyWith(isActive: !state.isActive));
    }
  }

  /// Sets the search query.
  void setSearch(String? search) =>
      emit(state.copyWith(query: (search ?? '').trim()));

  /// Sets the items to search through.
  void setItems(List<T> items) {
    _allItems = items;
    emit(state);
  }

  /// Filters the items based on the search query.
  List<T> filter() {
    final query = state.query.trim().toLowerCase();
    if (query.isEmpty) return _allItems;

    return _allItems.where((item) => fnFilter(item, query)).toList();
  }

  /// The list of items that match the search query.
  List<T> get searchedItems => filter();
}
