part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitFinancesCategoriesX on BirdBreederCubit {
  Future<FinanceCategory?> addFinancesCategory(
    FinanceCategory category,
  ) async {
    push(loading());
    final result = await _financesCategoriesRepository.create(category.toDto());
    if (result.isError) {
      presentAddFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<FinanceCategory?> updateFinancesCategory(
    FinanceCategory category,
  ) async {
    push(loading());
    final result = await _financesCategoriesRepository.update(
      category.id,
      category.toDto(),
    );
    if (result.isError) {
      presentUpdateFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteFinancesCategory(FinanceCategory category) async {
    push(loading());
    final result = await _financesCategoriesRepository.delete(category.id);
    if (result.isError) {
      presentDeleteFailed();
      push(loaded());
      return;
    }
  }

  List<FinanceCategory> get financesCategories =>
      state.birdBreederResources.financesCategories;
}
