import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/cages/domain/repositories/i_cages_repository.dart';
import 'package:birdbreeder/features/cages/presentation/cubit/cages_cubit_event.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cages_bloc.freezed.dart';
part 'cages_state.dart';

class CagesCubit extends Cubit<CagesState>
    with BlocPresentationMixin<CagesState, CagesCubitEvent> {
  CagesCubit(this._birdColorsRepository) : super(const CagesState.initial());

  final ICagesRepository _birdColorsRepository;

  Future<void> add(Cage cage) async {
    emit(const Loading());

    final result = await _birdColorsRepository.create(cage);

    if (result.isError) {
      emitPresentation(const CagesCubitEvent.createFailed());
      return;
    }

    await load();
  }

  Future<void> load() async {
    emit(const Loading());

    final result = await _birdColorsRepository.getAll();

    if (result.isError) {
      emit(const ErrorScreen());
      return;
    }

    emit(Loaded(cages: result.asValue!.value));
  }

  Future<void> edit(
    Cage cage,
  ) async {
    emit(const Loading());

    final result = await _birdColorsRepository.update(cage);

    if (result.isError) {
      emitPresentation(const CagesCubitEvent.updateFailed());
      return;
    }

    await load();
  }

  Future<void> delete(
    Cage cage,
  ) async {
    emit(const Loading());

    final result = await _birdColorsRepository.delete(cage);

    if (result.isError) {
      emitPresentation(const CagesCubitEvent.deleteFailed());
      return;
    }

    await load();
  }
}
