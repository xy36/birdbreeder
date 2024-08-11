import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/repositories/i_birds_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'birds_cubit.freezed.dart';
part 'birds_state.dart';

class BirdsCubit extends Cubit<BirdsState> {
  BirdsCubit(this._birdsRepository) : super(const BirdsState.initial()) {
    _birdsRepository.addListener(load);
  }

  final IBirdsRepository _birdsRepository;

  Future<void> load() async {
    emit(const BirdsState.loading());
    final birds = await _birdsRepository.getAll();

    if (birds.isError) {
      emit(const BirdsState.error());
      return;
    }

    emit(BirdsState.loaded(birds: birds.asValue!.value));
  }
}
