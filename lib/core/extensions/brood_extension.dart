import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/cage_extension.dart';
import 'package:birdbreeder/models/bird_breeder_resources.dart';
import 'package:birdbreeder/models/breeding/brood_status.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

extension BroodListExtension on List<Brood> {
  Brood? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }

  Brood? get latestBrood {
    if (isEmpty) return null;
    return reduce((a, b) {
      if (b.start == null) return a;
      if (a.start == null) return b;

      return a.start!.isAfter(b.start!) ? a : b;
    });
  }

  int get laidCount {
    return sumBy((b) => b.laidCount);
  }

  int get hatchedCount {
    return sumBy((b) => b.hatchedCount);
  }

  int get fledgedCount {
    return sumBy((b) => b.fledgedCount);
  }
}

extension BroodExtension on Brood {
  BirdBreederResources Function() get _birdBreederResources =>
      () => s1.get<BirdBreederCubit>().state.birdBreederResources;

  List<Egg> get _eggs =>
      s1.get<BirdBreederCubit>().state.birdBreederResources.eggs;

  /// Returns the latest brood resolved by start date
  List<Egg> get childrenResolved => _eggs
      .where(
        (e) => e.broodId == id,
      )
      .toList();

  Cage? get cageResolved =>
      cage == null ? null : _birdBreederResources().cages.findById(cage!);

  int get laidCount => childrenResolved.length;

  int get hatchedCount =>
      childrenResolved.where((egg) => egg.hatchedAt != null).length;

  int get fledgedCount =>
      childrenResolved.where((egg) => egg.fledgedAt != null).length;

  BroodStatus get status {
    final s = start?.toUtc();
    final e = end?.toUtc();
    final now = DateTime.now().toUtc(); // always UTC internally

    if (s == null) return BroodStatus.inactive;
    if (e != null && e.isBefore(s)) return BroodStatus.completed;
    if (now.isBefore(s)) return BroodStatus.inactive;
    if (e == null) return BroodStatus.active;
    if (now.isBefore(e)) return BroodStatus.active;
    return BroodStatus.completed;
  }
}
