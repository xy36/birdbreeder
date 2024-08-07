import 'dart:async';

import 'package:async/async.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/repositories/i_birds_repository.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_mode.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_resources.dart';
import 'package:birdbreeder/features/cages/domain/repositories/i_cages_repository.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/colors/domain/repositories/i_color_repository.dart';
import 'package:birdbreeder/features/species/domain/repositories/i_species_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_bloc.freezed.dart';
part 'bird_event.dart';
part 'bird_state.dart';

class BirdBloc extends Bloc<BirdEvent, BirdState> {
  BirdBloc(
    this.speciesRepo,
    this.birdColorsRepo,
    this.cagesRepo,
    this.birdsRepo, {
    required Bird? bird,
  }) : super(
          BirdInitial(
            bird: bird ?? Bird.create(),
            mode: bird == null ? BirdMode.create : BirdMode.show,
            birdResources: BirdResources(
              cagesList: [],
              colorsList: [],
              speciesList: [],
            ),
          ),
        ) {
    on<BirdLoad>(_onLoad);
    on<BirdChange>(_onChange);
    on<BirdEdit>(_onEdit);
    on<BirdSave>(_onSave);
    on<BirdDelete>(_onDelete);

    initialBird = bird ?? Bird.create();
  }

  late Bird initialBird;
  final ISpeciesRepository speciesRepo;
  final IBirdColorsRepository birdColorsRepo;
  final ICagesRepository cagesRepo;
  final IBirdsRepository birdsRepo;

  bool get isDirty => state.bird != initialBird;

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

  FutureOr<void> _onLoad(BirdLoad event, Emitter<BirdState> emit) async {
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

  FutureOr<void> _onChange(BirdChange event, Emitter<BirdState> emit) {
    emit(
      BirdLoaded(
        bird: event.bird,
        mode: state.mode,
        birdResources: state.birdResources,
      ),
    );
  }

  FutureOr<void> _onEdit(BirdEdit event, Emitter<BirdState> emit) {
    if (state.mode == BirdMode.create) return null;

    emit(
      BirdLoaded(
        bird: state.bird,
        mode: state.mode == BirdMode.show ? BirdMode.edit : BirdMode.show,
        birdResources: state.birdResources,
      ),
    );
  }

  Future<Bird?> _createNewSpeciesIfNotExists(Bird bird) async {
    if (bird.species?.id != null && bird.species!.id.isNotEmpty) {
      return null;
    }

    if (bird.species?.name == null) {
      return null;
    }

    final newSpecies = await speciesRepo.create(bird.species!);

    return bird.copyWith(species: newSpecies.asValue?.value);
  }

  Future<Bird?> _createNewColorIfNotExists(Bird bird) async {
    if (bird.color?.id != null) {
      return null;
    }

    if (bird.color?.name == null) {
      return null;
    }

    final newColor = await birdColorsRepo
        .create(BirdColor.create().copyWith(name: bird.color!.name));

    return bird.copyWith(color: newColor.asValue?.value);
  }

  Future<Bird?> _createNewCageIfNotExists(Bird bird) async {
    return bird;
    // if (bird.cage?.id != null) {
    //   return null;
    // }

    // if (bird.cage?.name == null) {
    //   return null;
    // }

    // final newCage = await cagesRepo.create(Cage(name: bird.cage!.name));

    // return bird.copyWith(cage: newCage.asValue?.value);
  }

  FutureOr<void> _onSave(BirdSave event, Emitter<BirdState> emit) async {
    Result<Bird> result;
    final bird = state.bird;

    emit(
      BirdLoading(
        bird: state.bird,
        mode: state.mode,
        birdResources: state.birdResources,
      ),
    );

    // bird = await _createNewSpeciesIfNotExists(bird) ?? bird;
    // bird = await _createNewColorIfNotExists(bird) ?? bird;
    // bird = await _createNewCageIfNotExists(bird) ?? bird;

    if (state.mode == BirdMode.create) {
      result = await birdsRepo.create(bird);
    } else {
      result = await birdsRepo.update(bird);
    }

    if (result.isError) {
      emit(
        BirdError(
          bird: state.bird,
          mode: state.mode,
          birdResources: state.birdResources,
        ),
      );
    } else {
      emit(
        BirdSaved(
          bird: result.asValue!.value,
          mode: BirdMode.show,
          birdResources: state.birdResources,
        ),
      );
    }

    emit(
      BirdLoaded(
        bird: state.bird,
        mode: state.mode,
        birdResources: state.birdResources,
      ),
    );
  }

  FutureOr<void> _onDelete(BirdDelete event, Emitter<BirdState> emit) async {
    emit(
      BirdLoading(
        bird: state.bird,
        mode: state.mode,
        birdResources: state.birdResources,
      ),
    );

    final result = await birdsRepo.delete(state.bird);

    if (result.isError) {
      emit(
        BirdError(
          bird: state.bird,
          mode: state.mode,
          birdResources: state.birdResources,
        ),
      );

      emit(
        BirdLoaded(
          bird: state.bird,
          mode: state.mode,
          birdResources: state.birdResources,
        ),
      );
    }

    emit(
      BirdDeleted(
        bird: state.bird,
        mode: state.mode,
        birdResources: state.birdResources,
      ),
    );
  }
}
