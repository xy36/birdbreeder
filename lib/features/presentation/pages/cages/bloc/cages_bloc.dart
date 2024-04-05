import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/domain/i_cages_repository.dart';
import 'package:birdbreeder/features/domain/models/entities/cage.dart';
import 'package:birdbreeder/injection.dart';
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

    final result = await s1.get<ICagesRepository>().create(event.cage);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }

  FutureOr<void> _onLoad(Load event, Emitter<CagesState> emit) async {
    emit(const Loading());

    final result = await s1.get<ICagesRepository>().getAll();

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

    final result = await s1.get<ICagesRepository>().update(event.cage);

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

    final result = await s1.get<ICagesRepository>().delete(event.cage);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }
}
