part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitEggsX on BirdBreederCubit {
  Future<Egg?> addEgg(Egg egg) async {
    push(loading());
    final result = await _eggsRepository.create(egg.toDto());
    push(loaded());
    if (result.isError) {
      presentAddFailed();
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<Egg?> updateEgg(Egg egg) async {
    push(loading());
    final result = await _eggsRepository.update(egg.id, egg.toDto());
    push(loaded());
    if (result.isError) {
      presentUpdateFailed();
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteEgg(Egg egg) async {
    push(loading());
    final result = await _eggsRepository.delete(egg.id);
    push(loaded());
    if (result.isError) {
      presentDeleteFailed();
      return;
    }
  }

  List<Egg> get eggs => state.birdBreederResources.eggs;
}
