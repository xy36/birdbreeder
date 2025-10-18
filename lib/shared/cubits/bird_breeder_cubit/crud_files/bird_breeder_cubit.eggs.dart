part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitEggsX on BirdBreederCubit {
  Future<Egg?> addEgg(Egg egg) async {
    push(loading());
    final result = await _eggsRepository.create(egg.toDto());
    if (result.isError) {
      presentAddFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<Egg?> updateEgg(Egg egg) async {
    push(loading());
    final result = await _eggsRepository.update(egg.id, egg.toDto());
    if (result.isError) {
      presentUpdateFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteEgg(Egg egg) async {
    push(loading());
    final result = await _eggsRepository.delete(egg.id);
    if (result.isError) {
      presentDeleteFailed();
      push(loaded());
      return;
    }
  }

  List<Egg> get eggs => state.birdBreederResources.eggs;
}
