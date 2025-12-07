part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitColorsX on BirdBreederCubit {
  Future<List<BirdColor>> fetchColors() async {
    final res = await _birdColorsRepository.getAll();

    return res.asValue?.value ?? const [];
  }

  Future<void> reloadColors() async {
    push(loading());

    final colors = await fetchColors();

    emitLoaded(colors: colors);
  }

  Future<BirdColor?> addColor(BirdColor color) async {
    push(loading());

    final result = await _birdColorsRepository.create(color);

    push(loaded());

    if (result.isError) {
      presentAddFailed();
      return null;
    }

    final created = result.asValue!.value;
    _addColorToState(created);

    return created;
  }

  Future<BirdColor?> updateColor(BirdColor color) async {
    push(loading());

    final result = await _birdColorsRepository.update(color.id, color);

    push(loaded());

    if (result.isError) {
      presentUpdateFailed();
      return null;
    }

    final updated = result.asValue!.value;
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
