import 'package:async/async.dart';
import 'package:birdbreeder/features/birds/domain/entities/bird.dart';
import 'package:birdbreeder/features/birds/domain/repositories/i_birds_repository.dart';
import 'package:birdbreeder/services/injection.dart';

class CreateBirdUsecase {
  CreateBirdUsecase();
  final IBirdsRepository repository = s1.get<IBirdsRepository>();

  Future<Result<Bird>> call(Bird bird) async {
    return repository.create(bird);
  }
}
