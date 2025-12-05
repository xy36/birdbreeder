part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitColorsX on BirdBreederCubit {
  Future<List<BirdColor>> fetchColors() async {
    final res = await _birdColorsRepository.getAll();

    final colors = res.asValue?.value.map(resolveColorDto).toList() ?? const [];

    emitLoaded(colors: colors);
    return colors;
  }

  Future<BirdColor?> addColor(BirdColor color) async {
    push(loading());

    final result = await _birdColorsRepository.create(color.toDto());

    push(loaded());

    if (result.isError) {
      presentAddFailed();
      return null;
    }

    final created = result.asValue!.value.toModel();
    _addColorToState(created);

    return created;
  }

  Future<BirdColor?> updateColor(BirdColor color) async {
    push(loading());

    final result = await _birdColorsRepository.update(color.id, color.toDto());

    push(loaded());

    if (result.isError) {
      presentUpdateFailed();
      return null;
    }

    final updated = result.asValue!.value.toModel();
    _updateColorInState(updated);

    return updated;
  }

  Future<void> deleteColor(BirdColor color) async {
    push(loading());

    final result = await _birdColorsRepository.delete(color.id);

    push(loaded());

    if (result.isError) {
      presentDeleteFailed();
      return;
    }

    _removeColorFromState(color.id);
  }

  void _addColorToState(BirdColor color) {
    final updated = [...state.birdBreederResources.colors, color];
    _emitUpdatedColors(updated);
  }

  void _updateColorInState(BirdColor updatedColor) {
    final updated = state.birdBreederResources.colors
        .map((c) => c.id == updatedColor.id ? updatedColor : c)
        .toList();

    _emitUpdatedColors(updated);
  }

  void _removeColorFromState(String id) {
    final updated =
        state.birdBreederResources.colors.where((c) => c.id != id).toList();

    _emitUpdatedColors(updated);
  }

  void _emitUpdatedColors(List<BirdColor> colors) {
    emitLoaded(colors: colors);
  }

  // Getter
  List<BirdColor> get colors => state.birdBreederResources.colors;
}
