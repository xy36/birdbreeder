import 'package:birdbreeder/models/bird/bird_filter.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/utils/natural_compare.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BirdsFilterCubit extends Cubit<BirdFilter> {
  BirdsFilterCubit({String? currentUserContactId})
      : _defaultFilter = currentUserContactId != null
            ? BirdFilter(ownerIds: [currentUserContactId])
            : const BirdFilter(),
        super(
          currentUserContactId != null
              ? BirdFilter(ownerIds: [currentUserContactId])
              : const BirdFilter(),
        );

  BirdFilter _defaultFilter;

  /// The baseline filter (current user as owner, default sale/life stages).
  ///
  /// Values equal to this are not "user applied" and stay hidden in the
  /// active-filters bar.
  BirdFilter get defaultFilter => _defaultFilter;

  void reset() => emit(_defaultFilter);

  void applyFilter(BirdFilter filter) => emit(filter);
  void resetFilter() => emit(_defaultFilter);

  /// Seeds the default owner to the app-user contact once it is known.
  ///
  /// The cubit is created before the bird resources finish loading, so the
  /// app-user contact id may be unavailable at construction. This is called
  /// when resources are loaded; it re-applies the default while the user has
  /// not diverged from it, so the overview opens showing only the user's birds.
  void initOwnerDefault(String appUserContactId) {
    final alreadySeeded = _defaultFilter.ownerIds.length == 1 &&
        _defaultFilter.ownerIds.first == appUserContactId;
    if (alreadySeeded) return;

    final wasAtDefault = state == _defaultFilter;
    _defaultFilter = BirdFilter(ownerIds: [appUserContactId]);
    if (wasAtDefault) emit(_defaultFilter);
  }

  void setSort(BirdSort sort, bool ascending) =>
      emit(state.copyWith(sort: sort, sortAscending: ascending));

  List<Bird> filterBirds(List<Bird> birds) => filterBirdsWith(state, birds);

  /// Filters and sorts [birds] against an arbitrary [f] without touching the
  /// cubit state. Used to preview result counts while a filter is being edited.
  List<Bird> filterBirdsWith(BirdFilter f, List<Bird> birds) {
    // Convert lists to sets for O(1) lookups
    final sexSet = f.sexes.isEmpty ? null : f.sexes.toSet();
    final saleSet = f.saleStatus.isEmpty ? null : f.saleStatus.toSet();

    // 1) Filter
    final filtered = birds.where((b) {
      if (f.speciesIds.isNotEmpty && !f.speciesIds.contains(b.speciesId)) {
        return false;
      }
      if (f.cageIds.isNotEmpty && !f.cageIds.contains(b.cageId)) {
        return false;
      }
      if (f.colorIds.isNotEmpty && !f.colorIds.contains(b.colorId)) {
        return false;
      }
      if (f.ownerIds.isNotEmpty && !f.ownerIds.contains(b.ownerId)) {
        return false;
      }

      if (sexSet != null && !sexSet.contains(b.sex)) return false;
      if (saleSet != null && !saleSet.contains(b.saleStatus)) return false;

      if (!f.showDeceased && b.diedAt != null) return false;

      return true;
    }).toList();

    // 2) Sort. Each field has a base ascending comparator; the descending
    // order just negates it (nulls always sort last regardless of direction).
    final asc = f.sortAscending;
    switch (f.sort ?? BirdSort.updated) {
      case BirdSort.updated:
        filtered.sort((a, b) => _dirDate(a.updated, b.updated, asc));

      case BirdSort.age:
        filtered.sort(
          (a, b) =>
              _dirDate(_effectiveBirthDate(a), _effectiveBirthDate(b), asc),
        );

      case BirdSort.ring:
        filtered.sort((a, b) {
          final c = naturalCompare(a.ringNumber ?? '', b.ringNumber ?? '');
          return asc ? c : -c;
        });
    }

    return filtered;
  }

  /// Compares two nullable dates in [ascending] order, keeping nulls last.
  int _dirDate(DateTime? a, DateTime? b, bool ascending) {
    if (a == null && b == null) return 0;
    if (a == null) return 1;
    if (b == null) return -1;
    final c = a.compareTo(b);
    return ascending ? c : -c;
  }

  /// Picks the best available date to represent the "birth" moment for sorting/filtering age.
  DateTime? _effectiveBirthDate(Bird b) =>
      b.hatchedAt ?? b.laidAt ?? b.fledgedAt;
}
