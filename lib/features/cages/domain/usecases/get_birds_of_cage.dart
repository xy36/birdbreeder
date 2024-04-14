import 'package:async/async.dart';
import 'package:birdbreeder/features/birds/domain/entities/bird.dart';
import 'package:birdbreeder/features/cages/domain/i_cages_repository.dart';
import 'package:birdbreeder/services/injection.dart';

class GetBirdsOfCageUsecase {
  GetBirdsOfCageUsecase();
  final ICagesRepository repository = s1.get<ICagesRepository>();

  Future<Result<List<Bird>>> call(String id) async {
    return repository.getBirdsOfCage(id);
  }
}
