import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/domain/i_repository.dart';
import 'package:birdbreeder/features/domain/models/entities/species.dart';
import 'package:birdbreeder/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'species_bloc.freezed.dart';
part 'species_event.dart';
part 'species_state.dart';

class SpeciesBloc extends Bloc<SpeciesEvent, SpeciesState> {
  SpeciesBloc() : super(const Initial()) {
    on<Load>(_onLoad);
    on<AddSpecies>(_onAddSpecies);
    on<EditSpecies>(_onEditSpecies);
    on<DeleteSpecies>(_onDeleteSpecies);
  }

  FutureOr<void> _onAddSpecies(
    AddSpecies event,
    Emitter<SpeciesState> emit,
  ) async {
    emit(const Loading());

    final result = await s1.get<IRepository>().createSpecies(event.species);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }

  FutureOr<void> _onLoad(Load event, Emitter<SpeciesState> emit) async {
    emit(const Loading());

    final result = await s1.get<IRepository>().getSpecies();

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

    final result = await s1.get<IRepository>().updateSpecies(event.species);

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
    if (event.species.id == null) return;

    emit(const Loading());

    final result = await s1.get<IRepository>().deleteSpecies(event.species.id!);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }
}
