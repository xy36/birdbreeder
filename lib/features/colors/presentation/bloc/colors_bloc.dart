import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/colors/domain/repositories/i_color_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'colors_bloc.freezed.dart';
part 'colors_event.dart';
part 'colors_state.dart';

class ColorsBloc extends Bloc<ColorsEvent, ColorsState> {
  ColorsBloc(this._birdColorsRepository) : super(const Initial()) {
    on<Load>(_onLoad);
    on<AddColor>(_onAddColor);
    on<EditColor>(_onEditColor);
    on<DeleteColor>(_onDeleteColor);
  }

  final IBirdColorsRepository _birdColorsRepository;

  FutureOr<void> _onAddColor(AddColor event, Emitter<ColorsState> emit) async {
    emit(const Loading());

    final result = await _birdColorsRepository.create(event.color);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }

  FutureOr<void> _onLoad(Load event, Emitter<ColorsState> emit) async {
    emit(const Loading());

    final result = await _birdColorsRepository.getAll();

    if (result.isError) {
      emit(const Error());
      return;
    }

    emit(Loaded(colors: result.asValue!.value));
  }

  FutureOr<void> _onEditColor(
    EditColor event,
    Emitter<ColorsState> emit,
  ) async {
    emit(const Loading());

    final result = await _birdColorsRepository.update(event.color);

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
    emit(const Loading());

    final result = await _birdColorsRepository.delete(event.color);

    if (result.isError) {
      emit(const Error());
      return;
    }

    add(const Load());
  }
}
