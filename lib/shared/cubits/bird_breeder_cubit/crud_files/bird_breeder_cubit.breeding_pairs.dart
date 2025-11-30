part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitBreedingPairsX on BirdBreederCubit {
  Future<BreedingPair?> addBreedingPair(BreedingPair breedingPair) async {
    push(loading());
    final result = await _breedingsRepository.create(breedingPair.toDto());
    push(loaded());
    if (result.isError) {
      presentAddFailed();
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
    push(loaded());
    if (result.isError) {
      presentUpdateFailed();
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteBreedingPair(BreedingPair breedingPair) async {
    push(loading());
    final result = await _breedingsRepository.delete(breedingPair.id);
    push(loaded());
    if (result.isError) {
      presentDeleteFailed();
      return;
    }
  }

  List<BreedingPair> get breedingPairs =>
      state.birdBreederResources.breedingPairs;
}
