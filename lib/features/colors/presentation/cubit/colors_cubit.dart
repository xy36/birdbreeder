import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/colors/domain/repositories/i_color_repository.dart';
import 'package:birdbreeder/features/colors/presentation/cubit/colors_cubit_event.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/pocketbase_service.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'colors_bloc.freezed.dart';
part 'colors_state.dart';

class ColorsCubit extends Cubit<ColorsState>
    with BlocPresentationMixin<ColorsState, ColorsCubitEvent> {
  ColorsCubit(this._birdColorsRepository) : super(const ColorsInitial()) {
    s1.get<PocketBaseService>().colorsCollection.subscribe(
      '*',
      (e) {
        load();
      },
    );
  }

  final IBirdColorsRepository _birdColorsRepository;

  Future<void> add(BirdColor color) async {
    emit(const ColorsLoading());

    final result = await _birdColorsRepository.create(color);

    if (result.isError) {
      emitPresentation(const ColorsEventCreateFailed());
      return;
    }
  }

  Future<void> load() async {
    emit(const ColorsLoading());

    final result = await _birdColorsRepository.getAll();

    if (result.isError) {
      emit(const ColorsErrorScreen());
      return;
    }

    emit(ColorsLoaded(colors: result.asValue!.value));
  }

  FutureOr<void> edit(
    BirdColor color,
  ) async {
    emit(const ColorsLoading());

    final result = await _birdColorsRepository.update(color);

    if (result.isError) {
      emitPresentation(const ColorsEventUpdateFailed());
      return;
    }
  }

  FutureOr<void> delete(
    BirdColor color,
  ) async {
    emit(const ColorsLoading());

    final result = await _birdColorsRepository.delete(color);

    if (result.isError) {
      emitPresentation(const ColorsEventDeleteFailed());
      return;
    }
  }
}
