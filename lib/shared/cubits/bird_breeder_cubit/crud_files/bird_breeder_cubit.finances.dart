part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitFinancesX on BirdBreederCubit {
  Future<Finances?> addFinances(
    Finances finance,
  ) async {
    push(loading());
    final result = await _financesRepository.create(finance.toDto());
    if (result.isError) {
      presentAddFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<Finances?> updateFinances(
    Finances finance,
  ) async {
    push(loading());
    final result = await _financesRepository.update(
      finance.id,
      finance.toDto(),
    );
    if (result.isError) {
      presentUpdateFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteFinances(Finances finance) async {
    push(loading());
    final result = await _financesRepository.delete(finance.id);
    if (result.isError) {
      presentDeleteFailed();
      push(loaded());
      return;
    }
  }

  List<Finances> get finances => state.birdBreederResources.finances;
}
