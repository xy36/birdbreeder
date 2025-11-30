part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitBroodsX on BirdBreederCubit {
  Future<Brood?> addBrood(Brood brood) async {
    push(loading());
    final result = await _broodsRepository.create(brood.toDto());
    push(loaded());
    if (result.isError) {
      presentAddFailed();
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<Brood?> updateBrood(Brood brood) async {
    push(loading());
    final result = await _broodsRepository.update(brood.id, brood.toDto());
    push(loaded());
    if (result.isError) {
      presentUpdateFailed();
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteBrood(Brood brood) async {
    push(loading());
    final result = await _broodsRepository.delete(brood.id);
    push(loaded());
    if (result.isError) {
      presentDeleteFailed();
      return;
    }
  }

  List<Brood> get broods => state.birdBreederResources.broods;
}
