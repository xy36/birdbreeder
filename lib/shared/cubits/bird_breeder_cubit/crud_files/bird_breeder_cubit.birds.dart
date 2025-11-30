part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitBirdsX on BirdBreederCubit {
  Future<Bird?> addBird(Bird bird) async {
    push(loading());
    final result = await _birdsRepository.create(bird.toDto());
    push(loaded());
    if (result.isError) {
      presentAddFailed();
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<Bird?> updateBird(Bird bird) async {
    push(loading());
    final result = await _birdsRepository.update(bird.id, bird.toDto());
    push(loaded());
    if (result.isError) {
      presentUpdateFailed();
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteBird(Bird bird) async {
    push(loading());
    final result = await _birdsRepository.delete(bird.id);
    push(loaded());
    if (result.isError) {
      presentDeleteFailed();
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
    push(loaded());

    if (result.isError) {
      presentDuplicateFailed();
      return;
    }
  }

  List<Bird> get birds => state.birdBreederResources.birds;
}
