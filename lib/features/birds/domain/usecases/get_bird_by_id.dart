import 'package:async/async.dart';
import 'package:birdbreeder/features/birds/domain/entities/bird.dart';
import 'package:birdbreeder/features/birds/domain/repositories/i_birds_repository.dart';
import 'package:birdbreeder/services/injection.dart';

class GetBirdByIdUsecase {
  GetBirdByIdUsecase();
  final IBirdsRepository repository = s1.get<IBirdsRepository>();

  Future<Result<Bird>> call(String id) async {
    return repository.getById(id);
  }
}
