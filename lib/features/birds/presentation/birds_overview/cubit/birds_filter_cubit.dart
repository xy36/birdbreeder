import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/models/bird_filter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BirdsFilterCubit extends Cubit<BirdFilter> {
  BirdsFilterCubit() : super(const BirdFilter());

  void reset() => emit(const BirdFilter());

  void applyFilter(BirdFilter filter) => emit(filter);
  void resetFilter() => emit(const BirdFilter());

  List<Bird> filterBirds(List<Bird> birds) {
    final f = state;

    // Convert lists to sets for O(1) lookups
    final sexSet = f.sexes.isEmpty ? null : f.sexes.toSet();
    final stageSet = f.lifeStages.isEmpty ? null : f.lifeStages.toSet();
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

      if (sexSet != null && !sexSet.contains(b.sex)) return false;
      if (stageSet != null && !stageSet.contains(b.lifeStage)) return false;
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
        break;

      case BirdSort.ringAsc:
        filtered.sort(
          (a, b) => _naturalCompare(
            a.ringNumber ?? '',
            b.ringNumber ?? '',
          ),
        );
        break;

      case BirdSort.updatedDesc:
        filtered.sort((a, b) {
          final au = a.updatedAt ?? DateTime.fromMillisecondsSinceEpoch(0);
          final bu = b.updatedAt ?? DateTime.fromMillisecondsSinceEpoch(0);
          return bu.compareTo(au); // newest first
        });
        break;
    }

    return filtered;
  }

  /// Picks the best available date to represent the "birth" moment for sorting/filtering age.
  DateTime? _effectiveBirthDate(Bird b) =>
      b.hatchedAt ?? b.laidAt ?? b.fledgedAt;

  /// Natural sort for strings with numbers: "A2" < "A10".
  int _naturalCompare(String a, String b) {
    final ra = _tokenize(a);
    final rb = _tokenize(b);
    final len = ra.length < rb.length ? ra.length : rb.length;

    for (var i = 0; i < len; i++) {
      final ta = ra[i];
      final tb = rb[i];
      final na = int.tryParse(ta);
      final nb = int.tryParse(tb);
      if (na != null && nb != null) {
        if (na != nb) return na.compareTo(nb);
      } else {
        final cmp = ta.compareTo(tb);
        if (cmp != 0) return cmp;
      }
    }
    return ra.length.compareTo(rb.length);
  }

  /// Splits into alpha/num chunks: "AB-12C3" -> ["AB-", "12", "C", "3"]
  List<String> _tokenize(String s) {
    final re = RegExp(r'(\d+|\D+)');
    return re.allMatches(s).map((m) => m.group(0)!).toList();
  }
}
