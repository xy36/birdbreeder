import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/features/Colors/presentation/color/cubit/color_state.dart';
import 'package:birdbreeder/features/colors/data/dtos/bird_color_dto.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/colors/presentation/color/cubit/color_cubit_event.dart';
import 'package:birdbreeder/shared/repositories/ressource_repository.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

class ColorCubit extends Cubit<ColorState>
    with BlocPresentationMixin<ColorState, ColorCubitEvent> {
  ColorCubit(
    this.ressourceRepository,
  ) : super(const ColorLoaded());
  final RessourceRepository<BirdColorDto> ressourceRepository;

  Future<void> add(BirdColor color) async {
    emit(const ColorLoading());

    final result = await ressourceRepository.create(color.toDto());

    if (result.isError) {
      emitPresentation(const ColorEventCreateFailed());
      return;
    }
  }

  FutureOr<void> edit(
    BirdColor color,
  ) async {
    emit(const ColorLoading());

    final result = await ressourceRepository.update(color.id, color.toDto());

    if (result.isError) {
      emitPresentation(const ColorEventUpdateFailed());
      return;
    }
  }

  FutureOr<void> delete(
    BirdColor color,
  ) async {
    emit(const ColorLoading());

    final result = await ressourceRepository.delete(color.id);

    if (result.isError) {
      emitPresentation(const ColorEventDeleteFailed());
      return;
    }
  }
}
