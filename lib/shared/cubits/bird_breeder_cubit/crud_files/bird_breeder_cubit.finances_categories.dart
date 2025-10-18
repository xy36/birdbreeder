part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitFinancesCategoriesX on BirdBreederCubit {
  Future<FinancesCategories?> addFinancesCategory(
    FinancesCategories category,
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

  Future<FinancesCategories?> updateFinancesCategory(
    FinancesCategories category,
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

  Future<void> deleteFinancesCategory(FinancesCategories category) async {
    push(loading());
    final result = await _financesCategoriesRepository.delete(category.id);
    if (result.isError) {
      presentDeleteFailed();
      push(loaded());
      return;
    }
  }

  List<FinancesCategories> get financesCategories =>
      state.birdBreederResources.financesCategories;
}
