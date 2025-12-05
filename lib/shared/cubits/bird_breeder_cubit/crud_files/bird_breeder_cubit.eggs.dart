part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitEggsX on BirdBreederCubit {
  Future<List<Egg>> fetchEggs() async {
    final res = await _eggsRepository.getAll();

    final eggs = res.asValue?.value.map(resolveEggDto).toList() ?? const [];

    emitLoaded(eggs: eggs);
    return eggs;
  }

  Future<Egg?> addEgg(Egg egg) async {
    push(loading());

    final result = await _eggsRepository.create(egg.toDto());

    push(loaded());

    if (result.isError) {
      presentAddFailed();
      return null;
    }

    final created = result.asValue!.value.toModel();
    _addEggToState(created);

    return created;
  }

  Future<Egg?> updateEgg(Egg egg) async {
    push(loading());

    final result = await _eggsRepository.update(egg.id, egg.toDto());

    push(loaded());

    if (result.isError) {
      presentUpdateFailed();
      return null;
    }

    final updated = result.asValue!.value.toModel();
    _updateEggInState(updated);

    return updated;
  }

  Future<void> deleteEgg(Egg egg) async {
    push(loading());

    final result = await _eggsRepository.delete(egg.id);

    push(loaded());

    if (result.isError) {
      presentDeleteFailed();
      return;
    }

    _removeEggFromState(egg.id);
  }

  void _addEggToState(Egg egg) {
    final updated = [...state.birdBreederResources.eggs, egg];
    _emitUpdatedEggs(updated);
  }

  void _updateEggInState(Egg updatedEgg) {
    final updated = state.birdBreederResources.eggs
        .map((e) => e.id == updatedEgg.id ? updatedEgg : e)
        .toList();

    _emitUpdatedEggs(updated);
  }

  void _removeEggFromState(String id) {
    final updated =
        state.birdBreederResources.eggs.where((e) => e.id != id).toList();

    _emitUpdatedEggs(updated);
  }

  void _emitUpdatedEggs(List<Egg> eggs) {
    emitLoaded(eggs: eggs);
  }

  // Getter
  List<Egg> get eggs => state.birdBreederResources.eggs;
}
