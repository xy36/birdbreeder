import 'package:async/async.dart';
import 'package:birdbreeder/features/cages/domain/entities/cage.dart';
import 'package:birdbreeder/features/cages/domain/i_cages_repository.dart';
import 'package:birdbreeder/services/injection.dart';

class GetCageByIdUsecase {
  GetCageByIdUsecase();
  final ICagesRepository repository = s1.get<ICagesRepository>();

  Future<Result<Cage>> call(String id) async {
    return repository.getById(id);
  }
}
