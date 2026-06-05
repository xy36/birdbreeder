import 'package:birdbreeder/features/ressourcen_center/cages/cubit/cages_filter_state.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/shared/utils/natural_compare.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CagesFilterCubit extends Cubit<CagesFilterState> {
  CagesFilterCubit() : super(const CagesFilterState());

  void setTypeFilter(CageTypeFilter f) => emit(state.copyWith(typeFilter: f));

  void setQuery(String q) => emit(state.copyWith(query: q));

  void setSort(CageSortField field, bool ascending) =>
      emit(state.copyWith(sortField: field, sortAsc: ascending));

  void reset() => emit(const CagesFilterState());

  /// Filter cages by current state. `occupiedByCage` maps cage id → count.
  List<Cage> filterCages(
    List<Cage> cages,
    Map<String, int> occupiedByCage,
  ) {
    final q = state.query.trim().toLowerCase();
    final filtered = cages.where((c) {
      switch (state.typeFilter) {
        case CageTypeFilter.aviary:
          if (c.type != CageType.aviary) return false;
        case CageTypeFilter.breedingBox:
          if (c.type != CageType.breedingBox) return false;
        case CageTypeFilter.quarantine:
          if (c.type != CageType.quarantine) return false;
        case CageTypeFilter.empty:
          if ((occupiedByCage[c.id] ?? 0) > 0) return false;
        case CageTypeFilter.all:
          break;
      }
      if (q.isEmpty) return true;
      return (c.name ?? '').toLowerCase().contains(q) ||
          (c.location ?? '').toLowerCase().contains(q);
    }).toList();
    _sort(filtered);
    return filtered;
  }

  void _sort(List<Cage> list) {
    final dir = state.sortAsc ? 1 : -1;
    list.sort((a, b) {
      switch (state.sortField) {
        case CageSortField.name:
          return dir * naturalCompare(a.name ?? '', b.name ?? '');
        case CageSortField.created:
          final ac = a.created ?? DateTime(1970);
          final bc = b.created ?? DateTime(1970);
          return dir * ac.compareTo(bc);
        case CageSortField.capacity:
          return dir * (a.capacity ?? 0).compareTo(b.capacity ?? 0);
      }
    });
  }

  /// Group cages by location. Preserves insertion order.
  Map<String, List<Cage>> groupByLocation(List<Cage> cages) {
    final map = <String, List<Cage>>{};
    for (final c in cages) {
      final loc = (c.location?.trim().isNotEmpty ?? false)
          ? c.location!
          : 'Ohne Standort';
      (map[loc] ??= []).add(c);
    }
    return map;
  }
}
