import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:birdbreeder/features/species/domain/repositories/i_species_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'species_bloc.freezed.dart';
part 'species_event.dart';
part 'species_state.dart';

class SpeciesBloc extends Bloc<SpeciesEvent, SpeciesState> {
  SpeciesBloc(this._speciesRepository) : super(const Initial()) {
    on<Load>(_onLoad);
    on<AddSpecies>(_onAddSpecies);
    on<EditSpecies>(_onEditSpecies);
    on<DeleteSpecies>(_onDeleteSpecies);
  }

  final ISpeciesRepository _speciesRepository;

  FutureOr<void> _onAddSpecies(
    AddSpecies event,
    Emitter<SpeciesState> emit,
  ) async {
    emit(const Loading());

    final result = await _speciesRepository.create(event.species);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }

  FutureOr<void> _onLoad(Load event, Emitter<SpeciesState> emit) async {
    emit(const Loading());

    final result = await _speciesRepository.getAll();

    if (result.isError) {
      emit(const Error());
      return;
    }

    emit(Loaded(species: result.asValue!.value));
  }

  FutureOr<void> _onEditSpecies(
    EditSpecies event,
    Emitter<SpeciesState> emit,
  ) async {
    emit(const Loading());

    final result = await _speciesRepository.update(event.species);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }

  FutureOr<void> _onDeleteSpecies(
    DeleteSpecies event,
    Emitter<SpeciesState> emit,
  ) async {
    emit(const Loading());

    final result = await _speciesRepository.delete(event.species);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }
}
