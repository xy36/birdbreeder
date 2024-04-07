import 'package:async/async.dart';
import 'package:birdbreeder/features/domain/i_crud_repository.dart';
import 'package:birdbreeder/features/domain/models/entities/bird.dart';
import 'package:birdbreeder/features/domain/models/entities/cage.dart';

abstract class ICagesRepository extends ICrudRepository<Cage> {
  /// Returns a list of all birds in given [id] of [Cage].
  Future<Result<List<Bird>>> getBirdsOfCage(String id);
}
