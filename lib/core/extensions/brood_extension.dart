import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

extension BroodListExtension on List<Brood> {
  Brood? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}

extension BroodExtension on Brood {
  /// Returns a function that returns the birds from the state
  List<Bird> get _birds =>
      s1.get<BirdBreederCubit>().state.birdBreederResources.birds;

  /// Returns the latest brood resolved by start date
  List<Bird> get childrenResolved => _birds
      .where(
        (e) => e.broodId == id,
      )
      .toList();

  int get laidEggs {
    return childrenResolved
        .where(
          (element) =>
              element.lifeStage == LifeStage.egg && element.laidAt != null,
        )
        .length;
  }

  int get chicken {
    return childrenResolved
        .where((element) => element.lifeStage == LifeStage.chick)
        .length;
  }

  int get fledgedBirds {
    return childrenResolved
        .where((element) => element.fledgedAt != null)
        .length;
  }
}
