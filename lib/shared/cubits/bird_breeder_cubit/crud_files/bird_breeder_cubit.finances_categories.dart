part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitFinancesCategoriesX on BirdBreederCubit {
  Future<List<FinanceCategory>> fetchFinancesCategories() async {
    final res = await _financesCategoriesRepository.getAll();

    return res.asValue?.value ?? const [];
  }

  Future<void> reloadFinancesCategories() async {
    push(loading());

    final categories = await fetchFinancesCategories();

    emitLoaded(financesCategories: categories);
  }

  Future<FinanceCategory?> addFinancesCategory(
    FinanceCategory category,
  ) async {
    push(loading());

    final result = await _financesCategoriesRepository.create(category);

    push(loaded());

    if (result.isError) {
      presentAddFailed();
      return null;
    }

    final created = result.asValue!.value;
    _addFinanceCategoryToState(created);

    return created;
  }

  Future<FinanceCategory?> updateFinancesCategory(
    FinanceCategory category,
  ) async {
    push(loading());

    final result = await _financesCategoriesRepository.update(
      category.id,
      category,
    );

    push(loaded());

    if (result.isError) {
      presentUpdateFailed();
      return null;
    }

    final updated = result.asValue!.value;
    _updateFinanceCategoryInState(updated);

    return updated;
  }

  Future<void> deleteFinancesCategory(FinanceCategory category) async {
    push(loading());

    final result = await _financesCategoriesRepository.delete(category.id);

    push(loaded());

    if (result.isError) {
      presentDeleteFailed();
      return;
    }

    _removeFinanceCategoryFromState(category.id);
  }

  void _addFinanceCategoryToState(FinanceCategory category) {
    final updated = [
      ...state.birdBreederResources.financesCategories,
      category,
    ];
    _emitUpdatedFinanceCategories(updated);
  }

  void _updateFinanceCategoryInState(FinanceCategory updatedCategory) {
    final updated = state.birdBreederResources.financesCategories
        .map((c) => c.id == updatedCategory.id ? updatedCategory : c)
        .toList();

    _emitUpdatedFinanceCategories(updated);
  }

  void _removeFinanceCategoryFromState(String id) {
    final updated = state.birdBreederResources.financesCategories
        .where((c) => c.id != id)
        .toList();

    _emitUpdatedFinanceCategories(updated);
  }

  void _emitUpdatedFinanceCategories(
    List<FinanceCategory> categories,
  ) {
    emitLoaded(financesCategories: categories);
  }

  // Getter
  List<FinanceCategory> get financesCategories =>
      state.birdBreederResources.financesCategories;
}
