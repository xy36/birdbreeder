import 'package:birdbreeder/features/ressourcen_center/species/cubit/species_filter_state.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/shared/utils/natural_compare.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpeciesFilterCubit extends Cubit<SpeciesFilterState> {
  SpeciesFilterCubit() : super(const SpeciesFilterState());

  void setQuery(String q) => emit(state.copyWith(query: q));

  void setSort(SpeciesSortField field, bool ascending) =>
      emit(state.copyWith(sortField: field, sortAsc: ascending));

  void reset() => emit(const SpeciesFilterState());

  List<Species> filterSpecies(List<Species> species) {
    final q = state.query.trim().toLowerCase();
    final filtered = q.isEmpty
        ? List<Species>.from(species)
        : species.where((s) {
            return (s.name ?? '').toLowerCase().contains(q) ||
                (s.latName ?? '').toLowerCase().contains(q);
          }).toList();
    _sort(filtered);
    return filtered;
  }

  void _sort(List<Species> list) {
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
      }
    });
  }
}
