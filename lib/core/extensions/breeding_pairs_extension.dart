import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

extension BreedingPairsExtension on BreedingPair {
  bool filter(String filter) {
    final isFatherRingNumberMatch = fatherResolved?.ringnumber
            ?.toLowerCase()
            .contains(filter.toLowerCase()) ??
        false;
    final isMotherRingNumberMatch = motherResolved?.ringnumber
            ?.toLowerCase()
            .contains(filter.toLowerCase()) ??
        false;
    return isFatherRingNumberMatch || isMotherRingNumberMatch;
  }

  /// Returns a function that returns the birds from the state
  List<Bird> Function() get _birds =>
      () => s1.get<BirdBreederCubit>().state.birdBreederResources.birds;

  /// Returns a function that returns the broods from the state
  List<Brood> Function() get _broods =>
      () => s1.get<BirdBreederCubit>().state.birdBreederResources.broods;

  /// Returns the father bird resolved from the state
  Bird? get fatherResolved =>
      father == null ? null : _birds().findById(father!);

  /// Returns the mother bird resolved from the state
  Bird? get motherResolved =>
      mother == null ? null : _birds().findById(mother!);

  /// Returns the children birds resolved from the state
  List<Brood> get childrenResolved => broods == null
      ? <Brood>[]
      : broods!
          .map(
            (e) => _broods().findById(e),
          )
          .whereType<Brood>()
          .toList();
}
