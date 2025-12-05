part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitCagesX on BirdBreederCubit {
  Future<List<Cage>> fetchCages() async {
    final res = await _cagesRepository.getAll();

    final cages = res.asValue?.value.map(resolveCageDto).toList() ?? const [];

    emitLoaded(cages: cages);
    return cages;
  }

  Future<Cage?> addCage(Cage cage) async {
    push(loading());

    final result = await _cagesRepository.create(cage.toDto());

    push(loaded());

    if (result.isError) {
      presentAddFailed();
      return null;
    }

    final created = result.asValue!.value.toModel();
    _addCageToState(created);

    return created;
  }

  Future<Cage?> updateCage(Cage cage) async {
    push(loading());

    final result = await _cagesRepository.update(cage.id, cage.toDto());

    push(loaded());

    if (result.isError) {
      presentUpdateFailed();
      return null;
    }

    final updated = result.asValue!.value.toModel();
    _updateCageInState(updated);

    return updated;
  }

  Future<void> deleteCage(Cage cage) async {
    push(loading());

    final result = await _cagesRepository.delete(cage.id);

    push(loaded());

    if (result.isError) {
      presentDeleteFailed();
      return;
    }

    _removeCageFromState(cage.id);
  }

  void _addCageToState(Cage cage) {
    final updated = [...state.birdBreederResources.cages, cage];
    _emitUpdatedCages(updated);
  }

  void _updateCageInState(Cage updatedCage) {
    final updated = state.birdBreederResources.cages
        .map((c) => c.id == updatedCage.id ? updatedCage : c)
        .toList();

    _emitUpdatedCages(updated);
  }

  void _removeCageFromState(String id) {
    final updated =
        state.birdBreederResources.cages.where((c) => c.id != id).toList();

    _emitUpdatedCages(updated);
  }

  void _emitUpdatedCages(List<Cage> cages) {
    emitLoaded(cages: cages);
  }

  // Getter
  List<Cage> get cages => state.birdBreederResources.cages;
}
