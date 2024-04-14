import 'package:async/async.dart';
import 'package:birdbreeder/features/cages/domain/entities/cage.dart';
import 'package:birdbreeder/features/birds/domain/entities/bird.dart';
import 'package:birdbreeder/shared/domain/repositories/i_crud_repository.dart';

abstract class ICagesRepository extends ICrudRepository<Cage> {
  /// Returns a list of all birds in given [id] of [Cage].
  Future<Result<List<Bird>>> getBirdsOfCage(String id);
}
