import 'dart:async';

import 'package:async/async.dart';
import 'package:birdbreeder/features/domain/i_birds_repository.dart';
import 'package:birdbreeder/features/domain/i_cages_repository.dart';
import 'package:birdbreeder/features/domain/i_color_repository.dart';
import 'package:birdbreeder/features/domain/i_species_repository.dart';
import 'package:birdbreeder/features/domain/models/entities/bird.dart';
import 'package:birdbreeder/features/domain/models/entities/bird_color.dart';
import 'package:birdbreeder/features/domain/models/entities/cage.dart';
import 'package:birdbreeder/features/domain/models/entities/species.dart';
import 'package:birdbreeder/features/presentation/pages/bird/models/bird_mode.dart';
import 'package:birdbreeder/features/presentation/pages/bird/models/bird_resources.dart';
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
            bird: bird ?? Bird.empty(),
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
  }

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
    if (bird.species?.id != null) {
      return null;
    }

    if (bird.species?.name == null) {
      return null;
    }

    final newSpecies =
        await speciesRepo.create(Species(name: bird.species!.name));

    return bird.copyWith(species: newSpecies.asValue?.value);
  }

  Future<Bird?> _createNewColorIfNotExists(Bird bird) async {
    if (bird.color?.id != null) {
      return null;
    }

    if (bird.color?.name == null) {
      return null;
    }

    final newColor =
        await birdColorsRepo.create(BirdColor(name: bird.color!.name));

    return bird.copyWith(color: newColor.asValue?.value);
  }

  Future<Bird?> _createNewCageIfNotExists(Bird bird) async {
    if (bird.cage?.id != null) {
      return null;
    }

    if (bird.cage?.name == null) {
      return null;
    }

    final newCage = await cagesRepo.create(Cage(name: bird.cage!.name));

    return bird.copyWith(cage: newCage.asValue?.value);
  }

  FutureOr<void> _onSave(BirdSave event, Emitter<BirdState> emit) async {
    Result<Bird> result;
    var bird = state.bird;

    emit(
      BirdLoading(
        bird: state.bird,
        mode: state.mode,
        birdResources: state.birdResources,
      ),
    );

    bird = await _createNewSpeciesIfNotExists(bird) ?? bird;
    bird = await _createNewColorIfNotExists(bird) ?? bird;
    bird = await _createNewCageIfNotExists(bird) ?? bird;

    if (bird.id == null) {
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
