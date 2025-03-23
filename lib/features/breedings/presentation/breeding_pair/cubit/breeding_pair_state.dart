part of 'breeding_pair_cubit.dart';

@freezed
class BreedingPairState with _$BreedingPairState {
  const factory BreedingPairState.initial() = BreedingPairInitial;
  const factory BreedingPairState.loading() = BreedingPairLoading;
  const factory BreedingPairState.loaded({
    required List<BreedingPair> breedingPairs,
  }) = BreedingPairLoaded;
  const factory BreedingPairState.errorScreen() = BreedingPairErrorScreen;
}
