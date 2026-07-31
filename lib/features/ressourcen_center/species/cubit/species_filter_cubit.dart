import 'package:birdbreeder/features/ressourcen_center/species/cubit/species_filter_state.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/shared/utils/natural_compare.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpeciesFilterCubit extends Cubit<SpeciesFilterState> {
  SpeciesFilterCubit() : super(const SpeciesFilterState());

  void setQuery(String q) => emit(state.copyWith(query: q));

  void setSort(SpeciesSortField field, bool ascending) =>
      emit(state.copyWith(sortField: field, sortAsc: ascending));

  void setEndangeredOnly({required bool value}) =>
      emit(state.copyWith(endangeredOnly: value));

  void reset() => emit(const SpeciesFilterState());

  /// Applies query, endangered filter and sorting.
  ///
  /// [stockBySpecies] holds the bird count per species id; it is only needed
  /// for [SpeciesSortField.stock] and defaults to zero for anything missing.
  List<Species> filterSpecies(
    List<Species> species, {
    Map<String, int> stockBySpecies = const {},
  }) {
    final q = state.query.trim().toLowerCase();
    final filtered = species.where((s) {
      if (state.endangeredOnly && !s.endangered) return false;
      if (q.isEmpty) return true;
      return (s.name ?? '').toLowerCase().contains(q) ||
          (s.latName ?? '').toLowerCase().contains(q);
    }).toList();
    _sort(filtered, stockBySpecies);
    return filtered;
  }

  void _sort(List<Species> list, Map<String, int> stock) {
    final dir = state.sortAsc ? 1 : -1;
    list.sort((a, b) {
      switch (state.sortField) {
        case SpeciesSortField.name:
          return dir * naturalCompare(a.name ?? '', b.name ?? '');
        case SpeciesSortField.latName:
          return dir * naturalCompare(a.latName ?? '', b.latName ?? '');
        case SpeciesSortField.created:
          final ac = a.created ?? DateTime(1970);
          final bc = b.created ?? DateTime(1970);
          return dir * ac.compareTo(bc);
        case SpeciesSortField.stock:
          final byStock = (stock[a.id] ?? 0).compareTo(stock[b.id] ?? 0) * dir;
          // Equal stock is common, so fall back to the name for a stable,
          // readable order instead of leaving it to sort order chance.
          return byStock != 0
              ? byStock
              : naturalCompare(a.name ?? '', b.name ?? '');
      }
    });
  }
}
