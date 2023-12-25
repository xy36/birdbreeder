import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/i_repository.dart';
import '../../../../domain/models/entities/bird.dart';
import '../../../../injection.dart';

part 'bird_bloc.freezed.dart';
part 'bird_event.dart';
part 'bird_state.dart';

class BirdBloc extends Bloc<BirdEvent, BirdState> {
  BirdBloc({required Bird? bird})
      : super(_BirdState(
          bird: bird ?? Bird.empty(),
          isEditMode: bird == null,
        )) {
    on<_Changed>(_onChanged);
    on<_Save>(_onSave);
    on<_Load>(_onLoad);
    on<_SetEditMode>(_onSetEditMode);
  }

  FutureOr<void> _onChanged(_Changed event, Emitter<BirdState> emit) {
    emit(
      state.copyWith(
        status: BirdStatus.success,
        bird: event.bird,
      ),
    );
  }

  FutureOr<void> _onLoad(_Load event, Emitter<BirdState> emit) {
    emit(
      state.copyWith(
        status: BirdStatus.loading,
        bird: state.bird,
      ),
    );

    emit(
      state.copyWith(
        status: BirdStatus.success,
        bird: state.bird,
      ),
    );
  }

  FutureOr<void> _onSave(_Save event, Emitter<BirdState> emit) async {
    emit(
      state.copyWith(
        status: BirdStatus.loading,
        bird: state.bird,
      ),
    );

    if (state.bird.id == null)
      await s1.get<IRepository>().createBird(state.bird);
    else
      await s1.get<IRepository>().updateBird(state.bird);

    emit(
      state.copyWith(
        status: BirdStatus.success,
        bird: state.bird,
        isEditMode: false,
      ),
    );
  }

  FutureOr<void> _onSetEditMode(_SetEditMode event, Emitter<BirdState> emit) {
    emit(
      state.copyWith(
        status: BirdStatus.success,
        bird: state.bird,
        isEditMode: event.isEditMode,
      ),
    );
  }
}
