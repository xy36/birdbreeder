part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitBirdsX on BirdBreederCubit {
  Future<Bird?> addBird(Bird bird) async {
    push(loading());
    final result = await _birdsRepository.create(bird.toDto());
    if (result.isError) {
      presentAddFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<Bird?> updateBird(Bird bird) async {
    push(loading());
    final result = await _birdsRepository.update(bird.id, bird.toDto());
    if (result.isError) {
      presentUpdateFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteBird(Bird bird) async {
    push(loading());
    final result = await _birdsRepository.delete(bird.id);
    if (result.isError) {
      presentDeleteFailed();
      push(loaded());
      return;
    }
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

    if (result.isError) {
      presentDuplicateFailed();
      push(loaded());
      return;
    }
  }

  List<Bird> get birds => state.birdBreederResources.birds;
}
