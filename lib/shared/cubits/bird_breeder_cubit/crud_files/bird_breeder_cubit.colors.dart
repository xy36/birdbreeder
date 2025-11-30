part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitColorsX on BirdBreederCubit {
  Future<BirdColor?> addColor(BirdColor color) async {
    push(loading());
    final result = await _birdColorsRepository.create(color.toDto());
    push(loaded());
    if (result.isError) {
      presentAddFailed();
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<BirdColor?> updateColor(BirdColor color) async {
    push(loading());
    final result = await _birdColorsRepository.update(color.id, color.toDto());
    push(loaded());
    if (result.isError) {
      presentUpdateFailed();
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteColor(BirdColor color) async {
    push(loading());
    final result = await _birdColorsRepository.delete(color.id);
    push(loaded());
    if (result.isError) {
      presentDeleteFailed();
      return;
    }
  }

  List<BirdColor> get colors => state.birdBreederResources.colors;
}
