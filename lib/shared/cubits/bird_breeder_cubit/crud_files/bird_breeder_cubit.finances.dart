part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitFinancesX on BirdBreederCubit {
  Future<List<Finance>> fetchFinances() async {
    final res = await _financesRepository.getAll();

    return res.asValue?.value ?? const [];
  }

  Future<void> reloadFinances() async {
    push(loading());

    final finances = await fetchFinances();

    emitLoaded(finances: finances);
  }

  Future<Finance?> addFinances(Finance finance) async {
    push(loading());

    final result = await _financesRepository.create(finance);

    push(loaded());

    if (result.isError) {
      presentAddFailed();
      return null;
    }

    final created = result.asValue!.value;
    _addFinanceToState(created);

    return created;
  }

  Future<Finance?> updateFinances(Finance finance) async {
    push(loading());

    final result = await _financesRepository.update(
      finance.id,
      finance,
    );

    push(loaded());

    if (result.isError) {
      presentUpdateFailed();
      return null;
    }

    final updated = result.asValue!.value;
    _updateFinanceInState(updated);

    return updated;
  }

  Future<void> deleteFinances(Finance finance) async {
    push(loading());

    final result = await _financesRepository.delete(finance.id);

    push(loaded());

    if (result.isError) {
      presentDeleteFailed();
      return;
    }

    _removeFinanceFromState(finance.id);
  }

  Future<Finance?> duplicateFinances(Finance finance) async {
    push(loading());

    final newFinance = finance.copyWith(
      id: '',
      date: DateTime.now(),
      title: '${finance.title} (copy)',
    );

    final result = await _financesRepository.create(newFinance);

    push(loaded());

    if (result.isError) {
      presentAddFailed();
      return null;
    }

    final duplicated = result.asValue!.value;
    _addFinanceToState(duplicated);

    return duplicated;
  }

  void _addFinanceToState(Finance finance) {
    final updated = [...state.birdBreederResources.finances, finance];
    _emitUpdatedFinances(updated);
  }

  void _updateFinanceInState(Finance updatedFinance) {
    final updated = state.birdBreederResources.finances
        .map((f) => f.id == updatedFinance.id ? updatedFinance : f)
        .toList();

    _emitUpdatedFinances(updated);
  }

  void _removeFinanceFromState(String id) {
    final updated =
        state.birdBreederResources.finances.where((f) => f.id != id).toList();

    _emitUpdatedFinances(updated);
  }

  void _emitUpdatedFinances(List<Finance> finances) {
    emitLoaded(finances: finances);
  }

  // Getter
  List<Finance> get finances => state.birdBreederResources.finances;
}
