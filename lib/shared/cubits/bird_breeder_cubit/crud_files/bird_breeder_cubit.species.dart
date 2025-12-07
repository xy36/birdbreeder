part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitSpeciesX on BirdBreederCubit {
  Future<List<Species>> fetchSpecies() async {
    final res = await _speciesRepository.getAll();

    return res.asValue?.value ?? const [];
  }

  Future<void> reloadSpecies() async {
    push(loading());

    final species = await fetchSpecies();

    emitLoaded(species: species);
  }

  Future<Species?> addSpecies(Species species) async {
    push(loading());

    final result = await _speciesRepository.create(species);

    push(loaded());

    if (result.isError) {
      presentAddFailed();
      return null;
    }

    final created = result.asValue!.value;
    _addSpeciesToState(created);

    return created;
  }

  Future<Species?> updateSpecies(Species species) async {
    push(loading());

    final result = await _speciesRepository.update(species.id, species);

    push(loaded());

    if (result.isError) {
      presentUpdateFailed();
      return null;
    }

    final updated = result.asValue!.value;
    _updateSpeciesInState(updated);

    return updated;
  }

  Future<void> deleteSpecies(Species species) async {
    push(loading());

    final result = await _speciesRepository.delete(species.id);

    push(loaded());

    if (result.isError) {
      presentDeleteFailed();
      return;
    }

    _removeSpeciesFromState(species.id);
  }

  void _addSpeciesToState(Species species) {
    final updated = [...state.birdBreederResources.species, species];
    _emitUpdatedSpecies(updated);
  }

  void _updateSpeciesInState(Species species) {
    final updated = state.birdBreederResources.species
        .map((s) => s.id == species.id ? species : s)
        .toList();

    _emitUpdatedSpecies(updated);
  }

  void _removeSpeciesFromState(String id) {
    final updated =
        state.birdBreederResources.species.where((s) => s.id != id).toList();

    _emitUpdatedSpecies(updated);
  }

  void _emitUpdatedSpecies(List<Species> species) {
    emitLoaded(species: species);
  }

  // Getter
  List<Species> get species => state.birdBreederResources.species;
}
