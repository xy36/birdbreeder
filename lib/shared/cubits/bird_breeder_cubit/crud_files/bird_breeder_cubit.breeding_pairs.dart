part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitBreedingPairsX on BirdBreederCubit {
  Future<BreedingPair?> addBreedingPair(BreedingPair breedingPair) async {
    push(loading());
    final result = await _breedingsRepository.create(breedingPair.toDto());
    if (result.isError) {
      presentAddFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<BreedingPair?> updateBreedingPair(BreedingPair breedingPair) async {
    push(loading());
    final result = await _breedingsRepository.update(
      breedingPair.id,
      breedingPair.toDto(),
    );
    if (result.isError) {
      presentUpdateFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteBreedingPair(BreedingPair breedingPair) async {
    push(loading());
    final result = await _breedingsRepository.delete(breedingPair.id);
    if (result.isError) {
      presentDeleteFailed();
      push(loaded());
      return;
    }
  }

  List<BreedingPair> get breedingPairs =>
      state.birdBreederResources.breedingPairs;
}
