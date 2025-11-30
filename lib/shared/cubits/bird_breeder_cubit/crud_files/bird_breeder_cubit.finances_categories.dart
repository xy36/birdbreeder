part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitFinancesCategoriesX on BirdBreederCubit {
  Future<FinanceCategory?> addFinancesCategory(
    FinanceCategory category,
  ) async {
    push(loading());
    final result = await _financesCategoriesRepository.create(category.toDto());
    push(loaded());
    if (result.isError) {
      presentAddFailed();
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
    push(loaded());
    if (result.isError) {
      presentUpdateFailed();
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteFinancesCategory(FinanceCategory category) async {
    push(loading());
    final result = await _financesCategoriesRepository.delete(category.id);
    push(loaded());
    if (result.isError) {
      presentDeleteFailed();
      return;
    }
  }

  List<FinanceCategory> get financesCategories =>
      state.birdBreederResources.financesCategories;
}
