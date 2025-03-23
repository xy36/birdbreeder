import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/features/species/data/dtos/species_dto.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:birdbreeder/features/species/presentation/cubit/species_cubit_event.dart';
import 'package:birdbreeder/shared/repositories/ressource_repository.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'species_cubit.freezed.dart';
part 'species_state.dart';

class SpeciesCubit extends Cubit<SpeciesState>
    with BlocPresentationMixin<SpeciesState, SpeciesCubitEvent> {
  SpeciesCubit(this.ressourceRepository) : super(const SpeciesLoaded());
  final RessourceRepository<SpeciesDto> ressourceRepository;

  Future<void> add(
    Species species,
  ) async {
    emit(const SpeciesLoading());

    final result = await ressourceRepository.create(species.toDto());

    if (result.isError) {
      emitPresentation(const SpeciesEventCreateFailed());
      return;
    }
  }

  Future<void> edit(
    Species species,
  ) async {
    emit(const SpeciesLoading());

    final result =
        await ressourceRepository.update(species.id, species.toDto());

    if (result.isError) {
      emitPresentation(const SpeciesEventUpdateFailed());
      return;
    }
  }

  Future<void> delete(
    Species species,
  ) async {
    emit(const SpeciesLoading());

    final result = await ressourceRepository.delete(species.id);

    if (result.isError) {
      emitPresentation(const SpeciesEventDeleteFailed());
      return;
    }
  }
}
