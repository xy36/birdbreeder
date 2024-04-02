import 'dart:async';

import 'package:async/async.dart';
import 'package:birdbreeder/features/domain/i_repository.dart';
import 'package:birdbreeder/features/domain/models/entities/bird.dart';
import 'package:birdbreeder/features/domain/models/entities/bird_color.dart';
import 'package:birdbreeder/features/domain/models/entities/species.dart';
import 'package:birdbreeder/features/presentation/pages/bird/models/bird_resources.dart';
import 'package:birdbreeder/injection.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_bloc.freezed.dart';
part 'bird_event.dart';
part 'bird_state.dart';

class BirdBloc extends Bloc<BirdEvent, BirdState> {
  BirdBloc({required Bird? bird})
      : super(
          BirdInitial(
            bird: bird ?? Bird.empty(),
            isEdit: bird == null || false,
            birdResources: BirdResources(),
          ),
        ) {
    on<BirdLoad>(_onLoad);
    on<BirdChange>(_onChange);
    on<BirdEdit>(_onEdit);
    on<BirdSave>(_onSave);
    on<BirdDelete>(_onDelete);
  }

  Future<BirdResources> _loadResources() async {
    final colors = (await s1.get<IRepository>().getColors()).asValue?.value;
    final species = (await s1.get<IRepository>().getSpecies()).asValue?.value;
    return BirdResources(colorsList: colors ?? [], speciesList: species ?? []);
  }

  FutureOr<void> _onLoad(BirdLoad event, Emitter<BirdState> emit) async {
    emit(
      BirdLoading(
        bird: state.bird,
        isEdit: state.isEdit,
        birdResources: state.birdResources,
      ),
    );

    // load data if needed
    emit(
      BirdLoaded(
        bird: state.bird,
        isEdit: state.isEdit,
        birdResources: await _loadResources(),
      ),
    );
  }

  FutureOr<void> _onChange(BirdChange event, Emitter<BirdState> emit) {
    emit(
      BirdLoaded(
        bird: event.bird,
        isEdit: state.isEdit,
        birdResources: state.birdResources,
      ),
    );
  }

  FutureOr<void> _onEdit(BirdEdit event, Emitter<BirdState> emit) {
    emit(
      BirdLoaded(
        bird: state.bird,
        isEdit: event.on,
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

    final newSpecies = await s1
        .get<IRepository>()
        .createSpecies(Species(name: bird.species!.name));

    return bird.copyWith(species: newSpecies.asValue?.value);
  }

  Future<Bird?> _createNewColorIfNotExists(Bird bird) async {
    if (bird.color?.id == null) {
      return null;
    }

    if (bird.color?.name == null) {
      return null;
    }

    final newColor = await s1
        .get<IRepository>()
        .createColor(BirdColor(name: bird.color!.name));

    return bird.copyWith(color: newColor.asValue?.value);
  }

  FutureOr<void> _onSave(BirdSave event, Emitter<BirdState> emit) async {
    Result<Bird> result;
    var bird = state.bird;

    emit(
      BirdLoading(
        bird: state.bird,
        isEdit: state.isEdit,
        birdResources: state.birdResources,
      ),
    );

    bird = await _createNewSpeciesIfNotExists(bird) ?? bird;
    bird = await _createNewColorIfNotExists(bird) ?? bird;

    if (bird.id == null) {
      result = await s1.get<IRepository>().createBird(bird);
    } else {
      result = await s1.get<IRepository>().updateBird(bird);
    }

    if (result.isError) {
      emit(
        BirdError(
          bird: state.bird,
          isEdit: state.isEdit,
          birdResources: state.birdResources,
        ),
      );
    } else {
      emit(
        BirdSaved(
          bird: result.asValue!.value,
          isEdit: false,
          birdResources: state.birdResources,
        ),
      );
    }

    emit(
      BirdLoaded(
        bird: state.bird,
        isEdit: state.isEdit,
        birdResources: state.birdResources,
      ),
    );
  }

  FutureOr<void> _onDelete(BirdDelete event, Emitter<BirdState> emit) async {
    emit(
      BirdLoading(
        bird: state.bird,
        isEdit: state.isEdit,
        birdResources: state.birdResources,
      ),
    );

    final result = await s1.get<IRepository>().deleteBird(state.bird.id!);

    if (result.isError) {
      emit(
        BirdError(
          bird: state.bird,
          isEdit: state.isEdit,
          birdResources: state.birdResources,
        ),
      );

      emit(
        BirdLoaded(
          bird: state.bird,
          isEdit: state.isEdit,
          birdResources: state.birdResources,
        ),
      );
    }

    emit(
      BirdDeleted(
        bird: state.bird,
        isEdit: false,
        birdResources: state.birdResources,
      ),
    );
  }
}
