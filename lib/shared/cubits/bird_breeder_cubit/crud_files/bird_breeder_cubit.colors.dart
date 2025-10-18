part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitColorsX on BirdBreederCubit {
  Future<BirdColor?> addColor(BirdColor color) async {
    push(loading());
    final result = await _birdColorsRepository.create(color.toDto());
    if (result.isError) {
      presentAddFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<BirdColor?> updateColor(BirdColor color) async {
    push(loading());
    final result = await _birdColorsRepository.update(color.id, color.toDto());
    if (result.isError) {
      presentUpdateFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteColor(BirdColor color) async {
    push(loading());
    final result = await _birdColorsRepository.delete(color.id);
    if (result.isError) {
      presentDeleteFailed();
      push(loaded());
      return;
    }
  }

  List<BirdColor> get colors => state.birdBreederResources.colors;
}
