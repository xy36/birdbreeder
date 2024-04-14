import 'package:async/async.dart';
import 'package:birdbreeder/features/data/firestore/firestore_cache.dart';
import 'package:birdbreeder/features/domain/i_color_repository.dart';
import 'package:birdbreeder/features/domain/mapper/mapper.dart';
import 'package:birdbreeder/features/domain/models/dtos/bird_color_dto.dart';
import 'package:birdbreeder/features/domain/models/entities/bird_color.dart';
import 'package:birdbreeder/injection.dart';
import 'package:birdbreeder/logging_service.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

const String prefix = 'FirestoreBirdColorsRepository';

class FirestoreBirdColorsRepository extends FirestoreCache<BirdColorDto>
    implements IBirdColorsRepository {
  FirestoreBirdColorsRepository()
      : super(
          hasSameId: ({required obj, required cached}) => obj.id == cached.id,
        );

  final db = s1.get<FirebaseFirestore>();
  final authUser =
      s1.get<IAuthenticationService>().currentUser().asValue?.value;
  final logger = s1.get<LoggingService>().logger;

  CollectionReference<Map<String, dynamic>> get birdColorsCollection =>
      db.collection('users').doc(authUser!.uid).collection('colors');

  @override
  Future<Result<BirdColor>> create(BirdColor birdColor) async {
    logger.verbose('[$prefix] Creating birdColor: $birdColor');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final newBirdColor = birdColor.copyWith(id: const Uuid().v4()).toDto()
      ..setLastUpdated();

    try {
      // add the birdColor to the user's birdColors collection
      await birdColorsCollection.add(
        newBirdColor.toJson(),
      );

      addOrUpdateCache([newBirdColor]);

      logger.verbose('[$prefix] BirdColor created: $newBirdColor');
      return Result.value(newBirdColor.toBirdColor());
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error creating birdColor: $birdColor');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> delete(BirdColor birdColor) async {
    logger.verbose('[$prefix] Deleting birdColor with id: ${birdColor.id}');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    try {
      // remove the birdColor from the user's birdColors collection
      await birdColorsCollection
          .where('id', isEqualTo: birdColor.id)
          .get()
          .then((value) => value.docs.first.reference.delete());

      logger.verbose('[$prefix] BirdColor deleted with id: ${birdColor.id}');

      removeFromCache([birdColor.toDto()]);

      return Result.value(null);
    } catch (e, st) {
      logger.handle(
        e,
        st,
        '[$prefix] Error deleting birdColor with id: ${birdColor.id}',
      );
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<BirdColor>>> getAll() async {
    logger.verbose('[$prefix] Getting all birdColors');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    try {
      final birdColorsDtos = await birdColorsCollection
          .where(
            'lastUpdated',
            isGreaterThan: lastUpdated.toIso8601String(),
          )
          .get()
          .then(
            (value) => value.docs
                .map((doc) => BirdColorDto.fromJson(doc.data()))
                .toList(),
          );

      logger.verbose(
        '[$prefix] Got all bird colors (all:${cache.length} | readFromFirestore:${birdColorsDtos.length})',
      );

      // after successfully getting all birdColors, add them to the cache
      addOrUpdateCache(birdColorsDtos);

      return Result.value(
        cache.toBirdColorList(),
      );
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error getting all birdColors');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<BirdColor>> getById(String id) async {
    logger.verbose('[$prefix] Getting birdColor with id: $id');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    try {
      try {
        final birdColorFromCache =
            cache.firstWhere((element) => element.id == id);
        logger.verbose('[$prefix] Cache hit for birdColor with id: $id');
        return Result.value(birdColorFromCache.toBirdColor());
      } catch (e) {
        logger.verbose('[$prefix] Cache miss for birdColor with id: $id');
      }

      final birdColorFromFirestore = await birdColorsCollection
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.get());

      logger.verbose('[$prefix] Got birdColor with id: $id from Firestore');

      return Result.value(
        BirdColorDto.fromJson(birdColorFromFirestore.data()!).toBirdColor(),
      );
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error getting birdColor with id: $id');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<BirdColor>> update(BirdColor birdColor) async {
    logger.verbose('[$prefix] Updating birdColor: $birdColor');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    if (birdColor.id == null) {
      logger.error('[$prefix] BirdColor id is null');
      return Future.value(Result.error('BirdColor id is null'));
    }

    final updatedBirdColor = birdColor.toDto()..setLastUpdated();

    try {
      await birdColorsCollection
          .where('id', isEqualTo: updatedBirdColor.id)
          .get()
          .then(
            (value) =>
                value.docs.first.reference.update(updatedBirdColor.toJson()),
          );

      addOrUpdateCache([updatedBirdColor]);

      return Result.value(birdColor);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error updating birdColor: $birdColor');
      return Result.error(e.toString());
    }
  }
}
