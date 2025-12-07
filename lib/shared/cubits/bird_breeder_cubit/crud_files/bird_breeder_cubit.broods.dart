part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitBroodsX on BirdBreederCubit {
  Future<List<Brood>> fetchBroods() async {
    final res = await _broodsRepository.getAll();

    return res.asValue?.value ?? const [];
  }

  Future<void> reloadBroods() async {
    push(loading());

    final broods = await fetchBroods();

    emitLoaded(broods: broods);
  }

  Future<Brood?> addBrood(Brood brood) async {
    push(loading());

    final result = await _broodsRepository.create(brood);

    push(loaded());

    if (result.isError) {
      presentAddFailed();
      return null;
    }

    final created = result.asValue!.value;
    _addBroodToState(created);

    return created;
  }

  Future<Brood?> updateBrood(Brood brood) async {
    push(loading());

    final result = await _broodsRepository.update(brood.id, brood);

    push(loaded());

    if (result.isError) {
      presentUpdateFailed();
      return null;
    }

    final updated = result.asValue!.value;
    _updateBroodInState(updated);

    return updated;
  }

  Future<void> deleteBrood(Brood brood) async {
    push(loading());

    final result = await _broodsRepository.delete(brood.id);

    push(loaded());

    if (result.isError) {
      presentDeleteFailed();
      return;
    }

    _removeBroodFromState(brood.id);
  }

  void _addBroodToState(Brood brood) {
    final updated = [...state.birdBreederResources.broods, brood];
    _emitUpdatedBroods(updated);
  }

  void _updateBroodInState(Brood updatedBrood) {
    final updated = state.birdBreederResources.broods
        .map((b) => b.id == updatedBrood.id ? updatedBrood : b)
        .toList();

    _emitUpdatedBroods(updated);
  }

  void _removeBroodFromState(String id) {
    final updated =
        state.birdBreederResources.broods.where((b) => b.id != id).toList();

    _emitUpdatedBroods(updated);
  }

  void _emitUpdatedBroods(List<Brood> broods) {
    emitLoaded(broods: broods);
  }

  // Getter
  List<Brood> get broods => state.birdBreederResources.broods;
}
