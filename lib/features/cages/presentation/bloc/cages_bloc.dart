import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/domain/entities/cage.dart';
import 'package:birdbreeder/features/cages/domain/usecases/create_cage.dart';
import 'package:birdbreeder/features/cages/domain/usecases/delete_cage.dart';
import 'package:birdbreeder/features/cages/domain/usecases/get_all_cages.dart';
import 'package:birdbreeder/features/cages/domain/usecases/update_cage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cages_bloc.freezed.dart';
part 'cages_event.dart';
part 'cages_state.dart';

class CagesBloc extends Bloc<CagesEvent, CagesState> {
  CagesBloc() : super(const Initial()) {
    on<Load>(_onLoad);
    on<AddCage>(_onAddCage);
    on<EditCage>(_onEditCage);
    on<DeleteCage>(_onDeleteCage);
  }

  FutureOr<void> _onAddCage(AddCage event, Emitter<CagesState> emit) async {
    emit(const Loading());

    final result = await CreateCageUsecase().call(event.cage);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }

  FutureOr<void> _onLoad(Load event, Emitter<CagesState> emit) async {
    emit(const Loading());

    final result = await GetAllCagesUsecase().call();

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

    final result = await UpdateCageUsecase().call(event.cage);

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
    if (event.cage.id == null) return;

    emit(const Loading());

    final result = await DeleteCageUsecase().call(event.cage);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }
}
