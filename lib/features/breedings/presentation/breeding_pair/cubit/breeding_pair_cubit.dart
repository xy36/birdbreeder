import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/features/breedings/data/dtos/breeding_pair_dto.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair/cubit/breeding_pair_cubit_event.dart';
import 'package:birdbreeder/shared/repositories/ressource_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'breeding_pair_cubit.freezed.dart';
part 'breeding_pair_state.dart';

class BreedingPairCubit extends Cubit<BreedingPairState>
    with BlocPresentationMixin<BreedingPairState, BreedingPairCubitEvent> {
  BreedingPairCubit(this.ressourceRepository)
      : super(const BreedingPairInitial());
  final RessourceRepository<BreedingPairDto> ressourceRepository;

  Future<void> add(BreedingPair breedingPair) async {
    emit(const BreedingPairLoading());

    final result = await ressourceRepository.create(breedingPair.toDto());

    if (result.isError) {
      emitPresentation(const BreedingPairCubitEvent.createFailed());
      return;
    }
  }

  Future<void> edit(
    BreedingPair breedingPair,
  ) async {
    emit(const BreedingPairLoading());

    final result =
        await ressourceRepository.update(breedingPair.id, breedingPair.toDto());

    if (result.isError) {
      emitPresentation(const BreedingPairCubitEvent.updateFailed());
      return;
    }
  }

  Future<void> delete(
    BreedingPair breedingPair,
  ) async {
    emit(const BreedingPairLoading());

    final result = await ressourceRepository.delete(breedingPair.id);

    if (result.isError) {
      emitPresentation(const BreedingPairCubitEvent.deleteFailed());
      return;
    }
  }
}
