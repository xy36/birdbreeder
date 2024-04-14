import 'package:async/async.dart';
import 'package:birdbreeder/features/cages/domain/entities/cage.dart';
import 'package:birdbreeder/features/cages/domain/i_cages_repository.dart';
import 'package:birdbreeder/services/injection.dart';

class DeleteCageUsecase {
  DeleteCageUsecase();
  final ICagesRepository repository = s1.get<ICagesRepository>();

  Future<Result<void>> call(Cage cage) async {
    return repository.delete(cage);
  }
}
