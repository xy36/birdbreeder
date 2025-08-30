import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/cage_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/cage.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/models/bird_breeder_resources.dart';

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

  int get diedCount {
    return sumBy((b) => b.diedCount);
  }

  int get eggCount {
    return sumBy((b) => b.eggCount);
  }

  int get chickenCount {
    return sumBy((b) => b.chickenCount);
  }

  int get adultCount {
    return sumBy((b) => b.adultCount);
  }

  int get deceasedCount {
    return sumBy((b) => b.deceasedCount);
  }
}

extension BroodExtension on Brood {
  BirdBreederResources Function() get _birdBreederResources =>
      () => s1.get<BirdBreederCubit>().state.birdBreederResources;

  /// Returns a function that returns the birds from the state
  List<Bird> get _birds =>
      s1.get<BirdBreederCubit>().state.birdBreederResources.birds;

  /// Returns the latest brood resolved by start date
  List<Bird> get childrenResolved => _birds
      .where(
        (e) => e.broodId == id,
      )
      .toList();

  Cage? get cageResolved =>
      cage == null ? null : _birdBreederResources().cages.findById(cage!);

  int get laidCount =>
      childrenResolved.where((bird) => bird.laidAt != null).length;

  int get hatchedCount =>
      childrenResolved.where((bird) => bird.hatchedAt != null).length;

  int get fledgedCount =>
      childrenResolved.where((element) => element.fledgedAt != null).length;

  int get diedCount =>
      childrenResolved.where((element) => element.diedAt != null).length;

  int get chickenCount => childrenResolved
      .where((bird) => bird.lifeStage == LifeStage.chick)
      .length;

  int get adultCount => childrenResolved
      .where((bird) => bird.lifeStage == LifeStage.adult)
      .length;

  int get eggCount =>
      childrenResolved.where((bird) => bird.lifeStage == LifeStage.egg).length;

  int get deceasedCount => childrenResolved
      .where((bird) => bird.lifeStage == LifeStage.deceased)
      .length;
}
