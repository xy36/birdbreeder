part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitBreedingPairsX on BirdBreederCubit {
  Future<List<BreedingPair>> fetchBreedingPairs() async {
    final res = await _breedingsRepository.getAll();

    final pairs =
        res.asValue?.value.map(resolveBreedingPairDto).toList() ?? const [];

    emitLoaded(breedingPairs: pairs);
    return pairs;
  }

  Future<BreedingPair?> addBreedingPair(BreedingPair pair) async {
    push(loading());

    final result = await _breedingsRepository.create(pair.toDto());

    push(loaded());

    if (result.isError) {
      presentAddFailed();
      return null;
    }

    final created = result.asValue!.value.toModel();
    _addPairToState(created);

    return created;
  }

  Future<BreedingPair?> updateBreedingPair(BreedingPair pair) async {
    push(loading());

    final result = await _breedingsRepository.update(pair.id, pair.toDto());

    push(loaded());

    if (result.isError) {
      presentUpdateFailed();
      return null;
    }

    final updated = result.asValue!.value.toModel();
    _updatePairInState(updated);

    return updated;
  }

  Future<void> deleteBreedingPair(BreedingPair pair) async {
    push(loading());

    final result = await _breedingsRepository.delete(pair.id);

    push(loaded());

    if (result.isError) {
      presentDeleteFailed();
      return;
    }

    _removePairFromState(pair.id);
  }

  void _addPairToState(BreedingPair pair) {
    final updated = [...state.birdBreederResources.breedingPairs, pair];
    _emitUpdatedPairs(updated);
  }

  void _updatePairInState(BreedingPair updatedPair) {
    final updated = state.birdBreederResources.breedingPairs
        .map((p) => p.id == updatedPair.id ? updatedPair : p)
        .toList();

    _emitUpdatedPairs(updated);
  }

  void _removePairFromState(String id) {
    final updated = state.birdBreederResources.breedingPairs
        .where((p) => p.id != id)
        .toList();

    _emitUpdatedPairs(updated);
  }

  void _emitUpdatedPairs(List<BreedingPair> pairs) {
    emitLoaded(breedingPairs: pairs);
  }

  // Getter
  List<BreedingPair> get breedingPairs =>
      state.birdBreederResources.breedingPairs;
}
