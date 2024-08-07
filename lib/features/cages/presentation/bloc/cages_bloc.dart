import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/cages/domain/repositories/i_cages_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cages_bloc.freezed.dart';
part 'cages_event.dart';
part 'cages_state.dart';

class CagesBloc extends Bloc<CagesEvent, CagesState> {
  CagesBloc(this._birdColorsRepository) : super(const Initial()) {
    on<Load>(_onLoad);
    on<AddCage>(_onAddCage);
    on<EditCage>(_onEditCage);
    on<DeleteCage>(_onDeleteCage);
  }

  final ICagesRepository _birdColorsRepository;

  FutureOr<void> _onAddCage(AddCage event, Emitter<CagesState> emit) async {
    emit(const Loading());

    final result = await _birdColorsRepository.create(event.cage);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }

  FutureOr<void> _onLoad(Load event, Emitter<CagesState> emit) async {
    emit(const Loading());

    final result = await _birdColorsRepository.getAll();

    if (result.isError) {
      emit(const Error());
      return;
    }

    emit(Loaded(cages: result.asValue!.value));
  }

  FutureOr<void> _onEditCage(
    EditCage event,
    Emitter<CagesState> emit,
  ) async {
    emit(const Loading());

    final result = await _birdColorsRepository.update(event.cage);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }

  FutureOr<void> _onDeleteCage(
    DeleteCage event,
    Emitter<CagesState> emit,
  ) async {
    emit(const Loading());

    final result = await _birdColorsRepository.delete(event.cage);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }
}
