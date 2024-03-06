import 'dart:async';

import 'package:birdbreeder/features/domain/i_repository.dart';
import 'package:birdbreeder/features/domain/models/entities/bird_color.dart';
import 'package:birdbreeder/injection.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'colors_bloc.freezed.dart';
part 'colors_event.dart';
part 'colors_state.dart';

class ColorsBloc extends Bloc<ColorsEvent, ColorsState> {
  ColorsBloc() : super(const Initial()) {
    on<Load>(_onLoad);
    on<AddColor>(_onAddColor);
    on<EditColor>(_onEditColor);
    on<DeleteColor>(_onDeleteColor);
  }

  FutureOr<void> _onAddColor(AddColor event, Emitter<ColorsState> emit) async {
    emit(const Error());
    return;
    emit(const Loading());

    final result = await s1.get<IRepository>().createColor(event.color);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }

  FutureOr<void> _onLoad(Load event, Emitter<ColorsState> emit) async {
    emit(const Loading());

    final result = await s1.get<IRepository>().getColors();

    if (result.isError) {
      emit(const Error());
      return;
    }

    emit(Loaded(result.asValue!.value));
  }

  FutureOr<void> _onEditColor(
    EditColor event,
    Emitter<ColorsState> emit,
  ) async {
    emit(const Loading());

    final result = await s1.get<IRepository>().updateColor(event.color);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }

  FutureOr<void> _onDeleteColor(
    DeleteColor event,
    Emitter<ColorsState> emit,
  ) async {
    if (event.color.id == null) return;

    emit(const Loading());

    final result = await s1.get<IRepository>().deleteColor(event.color.id!);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }
}
