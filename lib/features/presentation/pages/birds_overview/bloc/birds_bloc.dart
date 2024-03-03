import 'dart:async';

import 'package:birdbreeder/features/domain/i_repository.dart';
import 'package:birdbreeder/injection.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/entities/bird.dart';

part 'birds_bloc.freezed.dart';
part 'birds_event.dart';
part 'birds_state.dart';

class BirdsBloc extends Bloc<BirdsEvent, BirdsState> {
  BirdsBloc()
      : super(
          const _BirdsState(
            birds: [],
          ),
        ) {
    on<_Load>(_onLoad);
    on<_SelectBird>(_onSelectBird);
  }

  FutureOr<void> _onLoad(_Load event, Emitter<BirdsState> emit) async {
    emit(
      state.copyWith(
        status: BirdsStatus.loading,
        birds: state.birds,
      ),
    );

    final birdsResult = await s1.get<IRepository>().getBirds();

    emit(
      state.copyWith(
        status: birdsResult.isError ? BirdsStatus.failure : BirdsStatus.success,
        birds: birdsResult.asValue?.value ?? state.birds,
      ),
    );
  }

  FutureOr<void> _onSelectBird(_SelectBird event, Emitter<BirdsState> emit) {
    emit(
      state.copyWith(
        status: BirdsStatus.loading,
      ),
    );

    emit(
      state.copyWith(
        status: BirdsStatus.success,
        selectedBird: event.bird == state.selectedBird ? null : event.bird,
      ),
    );
  }
}
