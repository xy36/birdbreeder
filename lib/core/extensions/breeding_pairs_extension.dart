import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/cage_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/cage.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

extension BreedingPairsExtension on BreedingPair {
  bool filter(String filter) {
    final isFatherRingNumberMatch = fatherResolved?.ringNumber
            ?.toLowerCase()
            .contains(filter.toLowerCase()) ??
        false;
    final isMotherRingNumberMatch = motherResolved?.ringNumber
            ?.toLowerCase()
            .contains(filter.toLowerCase()) ??
        false;
    return isFatherRingNumberMatch || isMotherRingNumberMatch;
  }

  /// Returns a function that returns the birds from the state
  List<Bird> get _birds =>
      s1.get<BirdBreederCubit>().state.birdBreederResources.birds;

  /// Returns a function that returns the broods from the state
  List<Brood> get _broods =>
      s1.get<BirdBreederCubit>().state.birdBreederResources.broods;

  /// Returns a function that returns the cages from the state
  List<Cage> get _cages =>
      s1.get<BirdBreederCubit>().state.birdBreederResources.cages;

  /// Returns the father bird resolved from the state
  Bird? get fatherResolved => _birds.findById(fatherId);

  /// Returns the mother bird resolved from the state
  Bird? get motherResolved => _birds.findById(motherId);

  Cage? get cageResolved => cageId != null ? _cages.findById(cageId!) : null;

  /// Returns the latest brood resolved by start date
  Brood? get latestBrood => broodsResolved.isEmpty
      ? null
      : broodsResolved
          .where(
            (e) => e.start != null,
          )
          .sortedBy(
            (e) => e.start!,
          )
          .lastOrNull;

  /// Returns the children birds resolved from the state
  List<Brood> get broodsResolved => _broods
      .where(
        (e) => e.breedingPair == id,
      )
      .toList();
}
