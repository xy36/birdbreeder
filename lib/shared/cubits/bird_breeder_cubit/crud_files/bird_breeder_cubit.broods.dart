part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitBroodsX on BirdBreederCubit {
  Future<Brood?> addBrood(Brood brood) async {
    push(loading());
    final result = await _broodsRepository.create(brood.toDto());
    if (result.isError) {
      presentAddFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<Brood?> updateBrood(Brood brood) async {
    push(loading());
    final result = await _broodsRepository.update(brood.id, brood.toDto());
    if (result.isError) {
      presentUpdateFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteBrood(Brood brood) async {
    push(loading());
    final result = await _broodsRepository.delete(brood.id);
    if (result.isError) {
      presentDeleteFailed();
      push(loaded());
      return;
    }
  }

  List<Brood> get broods => state.birdBreederResources.broods;
}
