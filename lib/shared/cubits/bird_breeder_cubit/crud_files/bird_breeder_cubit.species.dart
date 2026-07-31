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

  /// Deletes [species] and detaches it from every bird that referenced it.
  ///
  /// Without the detach those birds would keep pointing at a row that no
  /// longer exists: `speciesResolved` returns null and no screen shows the
  /// dangling id, so the breeder cannot even find what broke.
  Future<void> deleteSpecies(Species species) async {
    push(loading());

    final result = await _speciesRepository.delete(species.id);

    push(loaded());

    if (result.isError) {
      presentDeleteFailed();
      return;
    }

    await _detachSpeciesFromBirds(species.id);
    _removeSpeciesFromState(species.id);
  }

  Future<void> _detachSpeciesFromBirds(String speciesId) async {
    final affected = state.birdBreederResources.birds
        .where((b) => b.speciesId == speciesId)
        .toList();

    for (final bird in affected) {
      await _birdsRepository.update(bird.id, bird.copyWith(speciesId: null));
    }
    if (affected.isEmpty) return;

    final updated = state.birdBreederResources.birds
        .map((b) => b.speciesId == speciesId ? b.copyWith(speciesId: null) : b)
        .toList();
    emitLoaded(birds: updated);
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
