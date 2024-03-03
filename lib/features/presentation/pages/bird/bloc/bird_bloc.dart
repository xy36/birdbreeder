import 'dart:async';

import 'package:async/async.dart';
import 'package:birdbreeder/features/domain/i_repository.dart';
import 'package:birdbreeder/features/domain/models/entities/bird.dart';
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
          ),
        ) {
    on<BirdLoad>(_onLoad);
    on<BirdChange>(_onChange);
    on<BirdEdit>(_onEdit);
    on<BirdSave>(_onSave);
    on<BirdDelete>(_onDelete);
  }

  FutureOr<void> _onLoad(BirdLoad event, Emitter<BirdState> emit) {
    emit(BirdLoading(bird: state.bird, isEdit: state.isEdit));
    // load data if needed
    emit(BirdLoaded(bird: state.bird, isEdit: state.isEdit));
  }

  FutureOr<void> _onChange(BirdChange event, Emitter<BirdState> emit) {
    emit(BirdLoaded(bird: event.bird, isEdit: state.isEdit));
  }

  FutureOr<void> _onEdit(BirdEdit event, Emitter<BirdState> emit) {
    emit(BirdLoaded(bird: state.bird, isEdit: event.on));
  }

  FutureOr<void> _onSave(BirdSave event, Emitter<BirdState> emit) async {
    if (state is! BirdLoaded) {
      return;
    }

    final bird = state.bird;
    final repository = s1.get<IRepository>();

    if (bird.id == null) {
      final result = await repository.createBird(bird);
      _handleSaveResult(result, emit);
    } else {
      final result = await repository.updateBird(bird);
      _handleSaveResult(result, emit);
    }
  }

  void _handleSaveResult(Result<Bird> result, Emitter<BirdState> emit) {
    if (result.isError) {
      emit(BirdError(bird: state.bird, isEdit: state.isEdit));
    } else {
      emit(BirdSaved(bird: result.asValue!.value, isEdit: false));
    }
  }

  FutureOr<void> _onDelete(BirdDelete event, Emitter<BirdState> emit) async {
    if (state is BirdInitial) {
      return Future.value();
    }

    if (state is BirdLoaded) {
      final result = await s1.get<IRepository>().deleteBird(state.bird.id!);

      if (result.isError) {
        emit(BirdError(bird: state.bird, isEdit: state.isEdit));
        return;
      }

      emit(BirdDeleted(bird: state.bird, isEdit: false));
    }
  }
}
