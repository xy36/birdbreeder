import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/features/birds/data/dtos/bird_dto.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit_event.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_mode.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/models/bird_breeder_resources.dart';
import 'package:birdbreeder/shared/repositories/ressource_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_cubit.freezed.dart';
part 'bird_state.dart';

class BirdCubit extends Cubit<BirdState>
    with BlocPresentationMixin<BirdState, BirdCubitEvent> {
  BirdCubit(
    this.birdsRepo,
    this.resources, {
    required this.initialBird,
  }) : super(
          BirdLoaded(
            bird: initialBird ?? Bird.create(),
            mode: initialBird == null ? BirdMode.create : BirdMode.edit,
          ),
        ) {
    initialBird = state.bird;
  }

  Bird? initialBird;
  final RessourceRepository<BirdDto> birdsRepo;
  final BirdBreederResources resources;

  Future<void> changeBird(Bird bird) async {
    return emit(
      BirdLoaded(
        bird: bird,
        mode: state.mode,
      ),
    );
  }

  Future<void> save() async {
    final result = switch (state.mode) {
      BirdMode.create => await birdsRepo.create(state.bird.toDto()),
      BirdMode.edit =>
        await birdsRepo.update(state.bird.id, state.bird.toDto()),
    };

    if (result.isError) {
      emitPresentation(
        const BirdCubitEvent.error(),
      );

      return emit(
        BirdLoaded(
          bird: state.bird,
          mode: state.mode,
        ),
      );
    }

    initialBird = state.bird;

    emit(
      BirdLoaded(
        bird: state.bird,
        mode: BirdMode.edit,
      ),
    );

    emitPresentation(
      const BirdCubitEvent.saved(),
    );
  }

  Future<void> duplicate() async {
    final result = await birdsRepo.create(
      state.bird
          .copyWith(
            id: '',
            ringnumber: 'Duplicate of ${state.bird.ringnumber ?? ''}',
          )
          .toDto(),
    );

    if (result.isError) {
      emitPresentation(
        const BirdCubitEvent.error(),
      );
      return emit(
        BirdLoaded(
          bird: state.bird,
          mode: state.mode,
        ),
      );
    }

    emitPresentation(
      const BirdCubitEvent.duplicated(),
    );
  }

  Future<void> delete() async {
    emit(
      BirdLoading(
        bird: state.bird,
        mode: state.mode,
      ),
    );

    final result = await birdsRepo.delete(state.bird.id);

    if (result.isError) {
      emitPresentation(
        const BirdCubitEvent.error(),
      );
      emit(
        BirdLoaded(
          bird: state.bird,
          mode: state.mode,
        ),
      );
    }

    emitPresentation(
      const BirdCubitEvent.deleted(),
    );
  }
}
