part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitBirdsX on BirdBreederCubit {
  Future<List<Bird>> fetchBirds() async {
    final res = await _birdsRepository.getAll();

    final birds = res.asValue?.value.map(resolveBirdDto).toList() ?? const [];

    emitLoaded(birds: birds);
    return birds;
  }

  Future<Bird?> addBird(Bird bird) async {
    push(loading());

    final result = await _birdsRepository.create(bird.toDto());

    push(loaded());

    if (result.isError) {
      presentAddFailed();
      return null;
    }

    final created = result.asValue!.value.toModel();

    _addBirdToState(created);
    return created;
  }

  Future<Bird?> updateBird(Bird bird) async {
    push(loading());

    final result = await _birdsRepository.update(bird.id, bird.toDto());

    push(loaded());

    if (result.isError) {
      presentUpdateFailed();
      return null;
    }

    final updated = result.asValue!.value.toModel();

    _updateBirdInState(updated);
    return updated;
  }

  Future<void> deleteBird(Bird bird) async {
    push(loading());

    final result = await _birdsRepository.delete(bird.id);

    push(loaded());

    if (result.isError) {
      presentDeleteFailed();
      return;
    }

    _removeBirdFromState(bird.id);
  }

  Future<void> duplicateBird(Bird bird) async {
    push(loading());

    final result = await _birdsRepository.create(
      bird
          .copyWith(
            id: '',
            ringNumber: '${bird.ringNumber ?? ''} (copy)',
          )
          .toDto(),
    );

    push(loaded());

    if (result.isError) {
      presentDuplicateFailed();
      return;
    }

    final created = result.asValue!.value.toModel();
    _addBirdToState(created);
  }

  void _addBirdToState(Bird bird) {
    final updated = [...state.birdBreederResources.birds, bird];
    _emitUpdatedBirds(updated);
  }

  void _updateBirdInState(Bird updatedBird) {
    final updated = state.birdBreederResources.birds
        .map((b) => b.id == updatedBird.id ? updatedBird : b)
        .toList();

    _emitUpdatedBirds(updated);
  }

  void _removeBirdFromState(String id) {
    final updated =
        state.birdBreederResources.birds.where((b) => b.id != id).toList();

    _emitUpdatedBirds(updated);
  }

  void _emitUpdatedBirds(List<Bird> birds) {
    emitLoaded(birds: birds);
  }

  // Getter
  List<Bird> get birds => state.birdBreederResources.birds;
}
