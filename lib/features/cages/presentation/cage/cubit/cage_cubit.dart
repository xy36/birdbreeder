import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/features/cages/data/dtos/cage_dto.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/cages/presentation/cage/cubit/cage_cubit_event.dart';
import 'package:birdbreeder/shared/repositories/ressource_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cage_cubit.freezed.dart';
part 'cage_state.dart';

class CageCubit extends Cubit<CageState>
    with BlocPresentationMixin<CageState, CageCubitEvent> {
  CageCubit(this.ressourceRepository) : super(const CageState.loaded());

  final RessourceRepository<CageDto> ressourceRepository;

  Future<void> add(Cage cage) async {
    emit(const CageLoading());

    final result = await ressourceRepository.create(cage.toDto());

    if (result.isError) {
      emitPresentation(const CageCubitEvent.createFailed());
      return;
    }
  }

  Future<void> edit(
    Cage cage,
  ) async {
    emit(const CageLoading());

    final result = await ressourceRepository.update(cage.id, cage.toDto());

    if (result.isError) {
      emitPresentation(const CageCubitEvent.updateFailed());
      return;
    }
  }

  Future<void> delete(
    Cage cage,
  ) async {
    emit(const CageLoading());

    final result = await ressourceRepository.delete(cage.id);

    if (result.isError) {
      emitPresentation(const CageCubitEvent.deleteFailed());
      return;
    }
  }
}
