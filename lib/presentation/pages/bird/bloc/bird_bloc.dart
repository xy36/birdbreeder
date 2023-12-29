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
  BirdBloc({required String this.id})
      : super(_BirdState(
          bird: Bird.empty(),
        )) {
    on<_Changed>(_onChanged);
    on<_Save>(_onSave);
    on<_Load>(_onLoad);
    on<_Delete>(_onDelete);
    on<_Reload>(_onReload);
  }

  final String id;

  FutureOr<void> _onChanged(_Changed event, Emitter<BirdState> emit) {
    emit(
      state.copyWith(
        status: BirdStatus.success,
        bird: event.bird,
      ),
    );
  }

  FutureOr<void> _onLoad(_Load event, Emitter<BirdState> emit) async {
    emit(
      state.copyWith(
        status: BirdStatus.loading,
        bird: state.bird,
      ),
    );

    final birdResult = await s1.get<IRepository>().getBirdById(id);

    emit(
      state.copyWith(
        status: birdResult.isError ? BirdStatus.failure : BirdStatus.success,
        bird: birdResult.asValue?.value ?? state.bird,
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

    if (state.bird.id == null) {
      final result = await s1.get<IRepository>().createBird(state.bird);

      emit(
        state.copyWith(
          status: result.isError ? BirdStatus.failure : BirdStatus.success,
          bird: state.bird,
        ),
      );
    } else {
      await s1.get<IRepository>().updateBird(state.bird);

      emit(
        state.copyWith(
          status: BirdStatus.saved,
          bird: state.bird,
        ),
      );
    }
  }

  FutureOr<void> _onReload(_Reload event, Emitter<BirdState> emit) async {
    emit(
      state.copyWith(
        status: BirdStatus.loading,
        bird: state.bird,
      ),
    );

    final birdResult = await s1.get<IRepository>().getBirdById(id);

    emit(
      state.copyWith(
        status: birdResult.isError ? BirdStatus.failure : BirdStatus.success,
        bird: birdResult.asValue?.value ?? state.bird,
      ),
    );
  }

  FutureOr<void> _onDelete(_Delete event, Emitter<BirdState> emit) async {
    emit(
      state.copyWith(
        status: BirdStatus.loading,
        bird: state.bird,
      ),
    );

    final birdResult = await s1.get<IRepository>().deleteBird(id);

    emit(
      state.copyWith(
        status: birdResult.isError ? BirdStatus.failure : BirdStatus.deleted,
        bird: state.bird,
      ),
    );
  }
}
