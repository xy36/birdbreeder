part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitCagesX on BirdBreederCubit {
  Future<List<Cage>> fetchCages() async {
    final res = await _cagesRepository.getAll();

    return res.asValue?.value ?? const [];
  }

  Future<void> reloadCages() async {
    push(loading());

    final cages = await fetchCages();

    emitLoaded(cages: cages);
  }

  Future<Cage?> addCage(Cage cage) async {
    push(loading());

    final result = await _cagesRepository.create(cage);

    push(loaded());

    if (result.isError) {
      presentAddFailed();
      return null;
    }

    final created = result.asValue!.value;
    _addCageToState(created);

    return created;
  }

  Future<Cage?> updateCage(Cage cage) async {
    push(loading());

    final result = await _cagesRepository.update(cage.id, cage);

    push(loaded());

    if (result.isError) {
      presentUpdateFailed();
      return null;
    }

    final updated = result.asValue!.value;
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
