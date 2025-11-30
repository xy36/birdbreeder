part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitCagesX on BirdBreederCubit {
  Future<Cage?> addCage(Cage cage) async {
    push(loading());
    final result = await _cagesRepository.create(cage.toDto());
    push(loaded());
    if (result.isError) {
      presentAddFailed();
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<Cage?> updateCage(Cage cage) async {
    push(loading());
    final result = await _cagesRepository.update(cage.id, cage.toDto());
    push(loaded());
    if (result.isError) {
      presentUpdateFailed();
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteCage(Cage cage) async {
    push(loading());
    final result = await _cagesRepository.delete(cage.id);
    push(loaded());
    if (result.isError) {
      presentDeleteFailed();
      return;
    }
  }

  List<Cage> get cages => state.birdBreederResources.cages;
}
