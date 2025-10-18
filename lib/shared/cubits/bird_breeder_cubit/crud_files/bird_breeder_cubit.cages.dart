part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitCagesX on BirdBreederCubit {
  Future<Cage?> addCage(Cage cage) async {
    push(loading());
    final result = await _cagesRepository.create(cage.toDto());
    if (result.isError) {
      presentAddFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<Cage?> updateCage(Cage cage) async {
    push(loading());
    final result = await _cagesRepository.update(cage.id, cage.toDto());
    if (result.isError) {
      presentUpdateFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteCage(Cage cage) async {
    push(loading());
    final result = await _cagesRepository.delete(cage.id);
    if (result.isError) {
      presentDeleteFailed();
      push(loaded());
      return;
    }
  }

  List<Cage> get cages => state.birdBreederResources.cages;
}
