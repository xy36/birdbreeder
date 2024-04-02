import 'package:async/async.dart';
import 'package:birdbreeder/features/domain/i_repository.dart';
import 'package:birdbreeder/features/domain/mapper/mapper.dart';
import 'package:birdbreeder/features/domain/models/dtos/bird_color_dto.dart';
import 'package:birdbreeder/features/domain/models/dtos/bird_dto.dart';
import 'package:birdbreeder/features/domain/models/dtos/cage_dto.dart';
import 'package:birdbreeder/features/domain/models/dtos/species_dto.dart';
import 'package:birdbreeder/features/domain/models/entities/bird.dart';
import 'package:birdbreeder/features/domain/models/entities/bird_color.dart';
import 'package:birdbreeder/features/domain/models/entities/cage.dart';
import 'package:birdbreeder/features/domain/models/entities/species.dart';
import 'package:birdbreeder/injection.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class FiretoreRepository implements IRepository {
  final db = s1.get<FirebaseFirestore>();
  final authUser =
      s1.get<IAuthenticationService>().currentUser().asValue?.value;

  @override
  Future<Result<Bird>> createBird(Bird bird) async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    final newBird = bird.copyWith(id: const Uuid().v4());

    try {
      // add the bird to the user birds collection and insert uuid as id
      await db
          .collection('users')
          .doc(userId)
          .collection('birds')
          .add(newBird.toDto().toJson());

      return Result.value(newBird);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> deleteBird(String id) async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      // add the bird to the user birds collection and insert uuid as id
      await db
          .collection('users')
          .doc(userId)
          .collection('birds')
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.delete());

      return Result.value(null);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Bird>> getBirdById(String id) async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    final bird = await db
        .collection('users')
        .doc(userId)
        .collection('birds')
        .where('id', isEqualTo: id)
        .get()
        .then((value) => value.docs.first.reference.get());

    return Result.value(await BirdDto.fromJson(bird.data()!).toBird());
  }

  @override
  Future<Result<List<Bird>>> getBirds() async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final birdsDtos = await db
          .collection('users')
          .doc(userId)
          .collection('birds')
          .get()
          .then(
            (value) =>
                value.docs.map((doc) => BirdDto.fromJson(doc.data())).toList(),
          );

      return Result.value(await birdsDtos.toBirdList());
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Bird>>> getBirdsOfCage(String cageId) async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final birdsDtos = await db
          .collection('users')
          .doc(userId)
          .collection('birds')
          .where('cageId', isEqualTo: cageId)
          .get()
          .then(
            (value) =>
                value.docs.map((doc) => BirdDto.fromJson(doc.data())).toList(),
          );

      return Result.value(await birdsDtos.toBirdList());
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Bird>>> getBirdsOfColor(String colorId) async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final birdsDtos = await db
          .collection('users')
          .doc(userId)
          .collection('birds')
          .where('colorId', isEqualTo: colorId)
          .get()
          .then(
            (value) =>
                value.docs.map((doc) => BirdDto.fromJson(doc.data())).toList(),
          );

      return Result.value(await birdsDtos.toBirdList());
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Bird>>> getBirdsOfSpecies(String speciesId) async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final birdsDtos = await db
          .collection('users')
          .doc(userId)
          .collection('birds')
          .where('speciesId', isEqualTo: speciesId)
          .get()
          .then(
            (value) =>
                value.docs.map((doc) => BirdDto.fromJson(doc.data())).toList(),
          );

      return Result.value(await birdsDtos.toBirdList());
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Cage>> getCageById(String id) async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final cage = await db
          .collection('users')
          .doc(userId)
          .collection('cages')
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.get());

      return Result.value(CageDto.fromJson(cage.data()!).toCage());
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Cage>>> getCages() async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final cages =
          await db.collection('users').doc(userId).collection('cages').get();

      return Result.value(
        cages.docs
            .map((doc) => CageDto.fromJson(doc.data()))
            .toList()
            .toCageList(),
      );
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<BirdColor>> getColorById(String id) async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final color = await db
          .collection('users')
          .doc(userId)
          .collection('colors')
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.get());

      return Result.value(BirdColorDto.fromJson(color.data()!).toBirdColor());
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<BirdColor>>> getColors() async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final colors =
          await db.collection('users').doc(userId).collection('colors').get();

      return Result.value(
        colors.docs
            .map((doc) => BirdColorDto.fromJson(doc.data()))
            .toList()
            .toBirdColorList(),
      );
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Species>> createSpecies(Species species) async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    if (species.name == null) {
      return Future.value(Result.error('Species name is null'));
    }

    try {
      final newSpecies = species.copyWith(id: const Uuid().v4());

      // add the species to the user's species collection
      await db.collection('users').doc(userId).collection('species').add(
            newSpecies.toDto().toJson(),
          );

      return Result.value(newSpecies);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Species>>> getSpecies() async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final species =
          await db.collection('users').doc(userId).collection('species').get();

      return Result.value(
        species.docs
            .map((doc) => SpeciesDto.fromJson(doc.data()))
            .toList()
            .toSpeciesList(),
      );
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Species>> getSpeciesById(String id) async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final species = await db
          .collection('users')
          .doc(userId)
          .collection('species')
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.get());

      return Result.value(SpeciesDto.fromJson(species.data()!).toSpecies());
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Bird>> updateBird(Bird bird) async {
    if (bird.id == null) return Future.value(Result.error('Bird id is null'));

    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      await db
          .collection('users')
          .doc(userId)
          .collection('birds')
          .where('id', isEqualTo: bird.id)
          .get()
          .then(
            (value) => value.docs.first.reference
                .update(bird.copyWith(id: bird.id).toDto().toJson()),
          );

      return Result.value(bird);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Cage>> createCage(Cage cage) async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    final newCage = cage.copyWith(id: const Uuid().v4());

    try {
      // add the cage to the user's cages collection
      await db.collection('users').doc(userId).collection('cages').add(
            newCage.toDto().toJson(),
          );

      return Result.value(newCage);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<BirdColor>> createColor(BirdColor color) async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    final newColor = color.copyWith(id: const Uuid().v4());

    try {
      // add the color to the user's colors collection
      await db.collection('users').doc(userId).collection('colors').add(
            newColor.toDto().toJson(),
          );

      return Result.value(newColor);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> deleteCage(String id) async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      // remove the cage from the user's cages collection
      await db
          .collection('users')
          .doc(userId)
          .collection('cages')
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.delete());

      return Result.value(null);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> deleteColor(String id) async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      // remove the color from the user's colors collection
      await db
          .collection('users')
          .doc(userId)
          .collection('colors')
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.delete());

      return Result.value(null);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> deleteSpecies(String id) async {
    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      // remove the species from the user's species collection
      await db
          .collection('users')
          .doc(userId)
          .collection('species')
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.delete());

      return Result.value(null);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Cage>> updateCage(Cage cage) async {
    if (cage.id == null) return Future.value(Result.error('Cage id is null'));

    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      await db
          .collection('users')
          .doc(userId)
          .collection('cages')
          .where('id', isEqualTo: cage.id)
          .get()
          .then(
            (value) => value.docs.first.reference
                .update(cage.copyWith(id: cage.id).toDto().toJson()),
          );

      return Result.value(cage);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<BirdColor>> updateColor(BirdColor color) async {
    if (color.id == null) return Future.value(Result.error('Color id is null'));

    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      await db
          .collection('users')
          .doc(userId)
          .collection('colors')
          .where('id', isEqualTo: color.id)
          .get()
          .then(
            (value) => value.docs.first.reference
                .update(color.copyWith(id: color.id).toDto().toJson()),
          );

      return Result.value(color);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Species>> updateSpecies(Species species) async {
    if (species.id == null) {
      return Future.value(Result.error('Species id is null'));
    }

    if (authUser == null) {
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      await db
          .collection('users')
          .doc(userId)
          .collection('species')
          .where('id', isEqualTo: species.id)
          .get()
          .then(
            (value) => value.docs.first.reference
                .update(species.copyWith(id: species.id).toDto().toJson()),
          );

      return Result.value(species);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
