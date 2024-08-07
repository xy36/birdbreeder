import 'dart:async';

import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/repositories/i_birds_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'birds_bloc.freezed.dart';
part 'birds_event.dart';
part 'birds_state.dart';

class BirdsBloc extends Bloc<BirdsEvent, BirdsState> {
  BirdsBloc(this.birdsRepo)
      : super(
          const _BirdsState(
            birds: [],
          ),
        ) {
    on<_Load>(_onLoad);
    on<_SelectBird>(_onSelectBird);
  }

  final IBirdsRepository birdsRepo;

  FutureOr<void> _onLoad(_Load event, Emitter<BirdsState> emit) async {
    emit(
      state.copyWith(
        status: BirdsStatus.loading,
        birds: state.birds,
      ),
    );

    final birdsResult = await birdsRepo.getAll();

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
