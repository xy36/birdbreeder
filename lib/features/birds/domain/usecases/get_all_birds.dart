import 'package:async/async.dart';
import 'package:birdbreeder/features/birds/domain/entities/bird.dart';
import 'package:birdbreeder/features/birds/domain/repositories/i_birds_repository.dart';
import 'package:birdbreeder/services/injection.dart';

class GetAllBirdsUsecase {
  GetAllBirdsUsecase();
  final IBirdsRepository repository = s1.get<IBirdsRepository>();

  Future<Result<List<Bird>>> call() async {
    return repository.getAll();
  }
}
