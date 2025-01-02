import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/repositories/i_birds_repository.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit_event.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_mode.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_resources.dart';
import 'package:birdbreeder/features/cages/domain/repositories/i_cages_repository.dart';
import 'package:birdbreeder/features/colors/domain/repositories/i_color_repository.dart';
import 'package:birdbreeder/features/species/domain/repositories/i_species_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_cubit.freezed.dart';
part 'bird_state.dart';

class BirdCubit extends Cubit<BirdState>
    with BlocPresentationMixin<BirdState, BirdCubitEvent> {
  BirdCubit(
    this.speciesRepo,
    this.birdColorsRepo,
    this.cagesRepo,
    this.birdsRepo,
    this.initialBird,
  ) : super(
          BirdInitial(
            bird: initialBird ?? Bird.create(),
            mode: initialBird == null ? BirdMode.create : BirdMode.edit,
            birdResources: BirdResources(
              cagesList: [],
              colorsList: [],
              speciesList: [],
            ),
          ),
        ) {
    initialBird = state.bird;
  }

  Bird? initialBird;
  final ISpeciesRepository speciesRepo;
  final IBirdColorsRepository birdColorsRepo;
  final ICagesRepository cagesRepo;
  final IBirdsRepository birdsRepo;

  Future<BirdResources> _loadResources() async {
    final colors = (await birdColorsRepo.getAll()).asValue?.value;
    final species = (await speciesRepo.getAll()).asValue?.value;
    final cages = (await cagesRepo.getAll()).asValue?.value;

    return BirdResources(
      colorsList: colors ?? [],
      speciesList: species ?? [],
      cagesList: cages ?? [],
    );
  }

  Future<void> load() async {
    emit(
      BirdLoading(
        bird: state.bird,
        mode: state.mode,
        birdResources: state.birdResources,
      ),
    );

    // load data if needed
    emit(
      BirdLoaded(
        bird: state.bird,
        mode: state.mode,
        birdResources: await _loadResources(),
      ),
    );
  }

  Future<void> changeBird(Bird bird) async {
    return emit(
      BirdLoaded(
        bird: bird,
        mode: state.mode,
        birdResources: state.birdResources,
      ),
    );
  }

  Future<void> save() async {
    final result = switch (state.mode) {
      BirdMode.create => await birdsRepo.create(state.bird),
      BirdMode.edit => await birdsRepo.update(state.bird),
    };

    if (result.isError) {
      emitPresentation(
        const BirdCubitEvent.error(),
      );

      return emit(
        BirdLoaded(
          bird: state.bird,
          mode: state.mode,
          birdResources: state.birdResources,
        ),
      );
    }

    initialBird = result.asValue!.value;

    emit(
      BirdLoaded(
        bird: result.asValue!.value,
        mode: BirdMode.edit,
        birdResources: state.birdResources,
      ),
    );
  }

  Future<void> duplicate() async {
    final result = await birdsRepo.create(
      state.bird.copyWith(
        id: '',
        ringnumber: 'Duplicate of ${state.bird.ringnumber ?? ''}',
      ),
    );

    if (result.isError) {
      emitPresentation(
        const BirdCubitEvent.error(),
      );
      return emit(
        BirdLoaded(
          bird: state.bird,
          mode: state.mode,
          birdResources: state.birdResources,
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
        birdResources: state.birdResources,
      ),
    );

    final result = await birdsRepo.delete(state.bird);

    if (result.isError) {
      emitPresentation(
        const BirdCubitEvent.error(),
      );
      emit(
        BirdLoaded(
          bird: state.bird,
          mode: state.mode,
          birdResources: state.birdResources,
        ),
      );
    }

    emitPresentation(
      const BirdCubitEvent.deleted(),
    );
  }
}
