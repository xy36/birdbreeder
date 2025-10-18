part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitSpeciesX on BirdBreederCubit {
  Future<Species?> addSpecies(Species species) async {
    push(loading());
    final result = await _speciesRepository.create(species.toDto());
    if (result.isError) {
      presentAddFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<Species?> updateSpecies(Species species) async {
    push(loading());
    final result = await _speciesRepository.update(species.id, species.toDto());
    if (result.isError) {
      presentUpdateFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteSpecies(Species species) async {
    push(loading());
    final result = await _speciesRepository.delete(species.id);
    if (result.isError) {
      presentDeleteFailed();
      push(loaded());
      return;
    }
  }

  List<Species> get species => state.birdBreederResources.species;
}
