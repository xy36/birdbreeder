import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:birdbreeder/features/species/domain/repositories/i_species_repository.dart';
import 'package:birdbreeder/features/species/presentation/cubit/species_cubit_event.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'species_cubit.freezed.dart';
part 'species_state.dart';

class SpeciesCubit extends Cubit<SpeciesState>
    with BlocPresentationMixin<SpeciesState, SpeciesCubitEvent> {
  SpeciesCubit(this._speciesRepository) : super(const Initial());

  final ISpeciesRepository _speciesRepository;

  Future<void> add(
    Species species,
  ) async {
    emit(const Loading());

    final result = await _speciesRepository.create(species);

    if (result.isError) {
      emitPresentation(const SpeciesEventCreateFailed());
      return;
    }

    await load();
  }

  Future<void> load() async {
    emit(const Loading());

    final result = await _speciesRepository.getAll();

    if (result.isError) {
      emit(const ErrorScreen());
      return;
    }

    emit(Loaded(species: result.asValue!.value));
  }

  Future<void> edit(
    Species species,
  ) async {
    emit(const Loading());

    final result = await _speciesRepository.update(species);

    if (result.isError) {
      emitPresentation(const SpeciesEventUpdateFailed());
      return;
    }

    await load();
  }

  Future<void> delete(
    Species species,
  ) async {
    emit(const Loading());

    final result = await _speciesRepository.delete(species);

    if (result.isError) {
      emitPresentation(const SpeciesEventDeleteFailed());
      return;
    }
    await load();
  }
}
