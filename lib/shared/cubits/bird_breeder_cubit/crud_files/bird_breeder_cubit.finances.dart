part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitFinancesX on BirdBreederCubit {
  Future<Finance?> addFinances(
    Finance finance,
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

  Future<Finance?> updateFinances(
    Finance finance,
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

  Future<void> deleteFinances(Finance finance) async {
    push(loading());
    final result = await _financesRepository.delete(finance.id);
    if (result.isError) {
      presentDeleteFailed();
      push(loaded());
      return;
    }
  }

  Future<Finance?> duplicateFinances(Finance finance) async {
    push(loading());
    final newFinance = finance.copyWith(
      id: '',
      date: DateTime.now(),
      title: '${finance.title} (copy)',
    );
    final result = await _financesRepository.create(newFinance.toDto());
    if (result.isError) {
      presentAddFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  List<Finance> get finances => state.birdBreederResources.finances;
}
