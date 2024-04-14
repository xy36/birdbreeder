import 'package:async/async.dart';
import 'package:birdbreeder/features/cages/domain/entities/cage.dart';
import 'package:birdbreeder/features/cages/domain/i_cages_repository.dart';
import 'package:birdbreeder/services/injection.dart';

class GetAllCagesUsecase {
  GetAllCagesUsecase();
  final ICagesRepository repository = s1.get<ICagesRepository>();

  Future<Result<List<Cage>>> call() async {
    return repository.getAll();
  }
}
