import 'package:async/async.dart';
import 'package:birdbreeder/features/data/firestore/firestore_cache.dart';
import 'package:birdbreeder/features/domain/i_birds_repository.dart';
import 'package:birdbreeder/features/domain/mapper/mapper.dart';
import 'package:birdbreeder/features/domain/models/dtos/bird_dto.dart';
import 'package:birdbreeder/features/domain/models/entities/bird.dart';
import 'package:birdbreeder/injection.dart';
import 'package:birdbreeder/logging_service.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

const String prefix = 'FirestoreBirdsRepository';

class FirestoreBirdsRepository extends FirestoreCache<BirdDto>
    implements IBirdsRepository {
  FirestoreBirdsRepository()
      : super(
          hasSameId: ({required obj, required cached}) => obj.id == cached.id,
        );

  final db = s1.get<FirebaseFirestore>();
  final authUser =
      s1.get<IAuthenticationService>().currentUser().asValue?.value;
  final logger = s1.get<LoggingService>().logger;

  CollectionReference<Map<String, dynamic>> get birdsCollection =>
      db.collection('users').doc(authUser!.uid).collection('birds');

  @override
  Future<Result<Bird>> create(Bird bird) async {
    logger.verbose('[$prefix] Creating bird: $bird');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final newBird = bird.copyWith(id: const Uuid().v4()).toDto()
      ..setLastUpdated();

    try {
      // add the bird to the user's birds collection
      await birdsCollection.add(
        newBird.toJson(),
      );

      logger.verbose('[$prefix] Bird created: $newBird');
      return Result.value(await newBird.toBird());
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error creating bird: $bird');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> delete(Bird bird) async {
    logger.verbose('[$prefix] Deleting bird with id: ${bird.id}');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    try {
      // remove the bird from the user's birds collection
      await birdsCollection
          .where('id', isEqualTo: bird.id)
          .get()
          .then((value) => value.docs.first.reference.delete());

      logger.verbose('[$prefix] Bird deleted with id: ${bird.id}');

      removeFromCache([bird.toDto()]);

      return Result.value(null);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error deleting bird with id: ${bird.id}');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Bird>>> getAll() async {
    logger.verbose('[$prefix] Getting all birds');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    try {
      final birdsDtos = await birdsCollection
          .where(
            'lastUpdated',
            isGreaterThan: lastUpdated.toIso8601String(),
          )
          .get()
          .then(
            (value) =>
                value.docs.map((doc) => BirdDto.fromJson(doc.data())).toList(),
          );

      logger.verbose('[$prefix] Got all birds (${birdsDtos.length})');

      // after successfully getting all birds, add them to the cache
      addOrUpdateCache(birdsDtos);

      return Result.value(
        await cache.toBirdList(),
      );
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error getting all birds');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Bird>> getById(String id) async {
    logger.verbose('[$prefix] Getting bird with id: $id');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    try {
      final bird = await birdsCollection
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.get());

      logger.verbose('[$prefix] Got bird with id: $id');

      return Result.value(await BirdDto.fromJson(bird.data()!).toBird());
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error getting bird with id: $id');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Bird>> update(Bird bird) async {
    logger.verbose('[$prefix] Updating bird: $bird');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    if (bird.id == null) {
      logger.error('[$prefix] Bird id is null');
      return Future.value(Result.error('Bird id is null'));
    }

    final updatedBird = bird.toDto()..setLastUpdated();

    try {
      await birdsCollection.where('id', isEqualTo: updatedBird.id).get().then(
            (value) => value.docs.first.reference.update(updatedBird.toJson()),
          );

      return Result.value(bird);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error updating bird: $bird');
      return Result.error(e.toString());
    }
  }
}
