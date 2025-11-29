import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:bloc/bloc.dart';

class BroodCubit extends Cubit<List<Bird>> {
  BroodCubit(this.initialBirds, this.birdBreederCubit) : super(initialBirds);

  final List<Bird> initialBirds;

  final BirdBreederCubit birdBreederCubit;

  Future<void> changeBird(Bird bird) async {
    final currentBirds = List<Bird>.from(state);
    final index = currentBirds.indexWhere((b) => b.id == bird.id);

    if (index != -1) {
      currentBirds[index] = bird;
    } else {
      currentBirds.add(bird);
    }

    emit(currentBirds);
  }

  Future<void> removeBird(Bird bird) async {
    final currentBirds = List<Bird>.from(state)
      ..removeWhere((b) => b.id == bird.id);

    emit(currentBirds);
  }

  Future<void> addBird(Bird bird) async {
    final currentBirds = List<Bird>.from(state)..add(bird);

    emit(currentBirds);
  }
}
