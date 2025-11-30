part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitSpeciesX on BirdBreederCubit {
  Future<Species?> addSpecies(Species species) async {
    push(loading());
    final result = await _speciesRepository.create(species.toDto());
    push(loaded());
    if (result.isError) {
      presentAddFailed();
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<Species?> updateSpecies(Species species) async {
    push(loading());
    final result = await _speciesRepository.update(species.id, species.toDto());
    push(loaded());
    if (result.isError) {
      presentUpdateFailed();
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteSpecies(Species species) async {
    push(loading());
    final result = await _speciesRepository.delete(species.id);
    push(loaded());
    if (result.isError) {
      presentDeleteFailed();
      return;
    }
  }

  List<Species> get species => state.birdBreederResources.species;
}
