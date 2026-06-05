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

  final BirdFilter _defaultFilter;

  /// The baseline filter (current user as owner, default sale/life stages).
  ///
  /// Values equal to this are not "user applied" and stay hidden in the
  /// active-filters bar.
  BirdFilter get defaultFilter => _defaultFilter;

  void reset() => emit(_defaultFilter);

  void applyFilter(BirdFilter filter) => emit(filter);
  void resetFilter() => emit(_defaultFilter);

  List<Bird> filterBirds(List<Bird> birds) {
    final f = state;

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

      return true;
    }).toList();

    // 2) Sort
    switch (f.sort ?? BirdSort.updatedDesc) {
      case BirdSort.ageAsc:
        // "young → old": newer birth date first (descending by effective birth)
        filtered.sort((a, b) {
          final ad = _effectiveBirthDate(a);
          final bd = _effectiveBirthDate(b);
          // Descending: nulls last
          if (ad == null && bd == null) return 0;
          if (ad == null) return 1;
          if (bd == null) return -1;
          return bd.compareTo(ad);
        });

      case BirdSort.ringAsc:
        filtered.sort(
          (a, b) => naturalCompare(
            a.ringNumber ?? '',
            b.ringNumber ?? '',
          ),
        );

      case BirdSort.updatedDesc:
        filtered.sort((a, b) {
          final au = a.updated ?? DateTime.fromMillisecondsSinceEpoch(0);
          final bu = b.updated ?? DateTime.fromMillisecondsSinceEpoch(0);
          return bu.compareTo(au); // newest first
        });
    }

    return filtered;
  }

  /// Picks the best available date to represent the "birth" moment for sorting/filtering age.
  DateTime? _effectiveBirthDate(Bird b) =>
      b.hatchedAt ?? b.laidAt ?? b.fledgedAt;

}
