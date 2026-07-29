import 'package:async/async.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird_breeder_resources.dart';
import 'package:birdbreeder/models/bird_image/entity/bird_image.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/repositories/i_crud_repository.dart';

/// Repositories are never touched: the column resolvers only read the cubit's
/// in-memory resources, which [_SeededBirdBreederCubit] serves directly.
class _UnusedRepository<T> implements ICrudRepository<T> {
  @override
  Future<Result<T>> create(T obj) => throw UnimplementedError();

  @override
  Future<Result<void>> delete(String id) => throw UnimplementedError();

  @override
  Future<Result<List<T>>> getAll() => throw UnimplementedError();

  @override
  Future<Result<T>> getById(String id) => throw UnimplementedError();

  @override
  Future<Result<T>> update(String id, T obj) => throw UnimplementedError();
}

class _SeededBirdBreederCubit extends BirdBreederCubit {
  _SeededBirdBreederCubit(this._resources)
      : super(
          _UnusedRepository<BreedingPair>(),
          _UnusedRepository<Bird>(),
          _UnusedRepository<Contact>(),
          _UnusedRepository<BirdColor>(),
          _UnusedRepository<Cage>(),
          _UnusedRepository<Species>(),
          _UnusedRepository<Brood>(),
          _UnusedRepository<Egg>(),
          _UnusedRepository<Finance>(),
          _UnusedRepository<FinanceCategory>(),
          _UnusedRepository<BirdImage>(),
        );

  final BirdBreederResources _resources;

  @override
  BirdBreederState get state =>
      BirdBreederState.initial(birdBreederResources: _resources);
}

/// Builds a resource set with only the parts a test cares about.
BirdBreederResources exportTestResources({
  List<Bird> birds = const [],
  List<BreedingPair> breedingPairs = const [],
  List<Brood> broods = const [],
  List<Egg> eggs = const [],
  List<Cage> cages = const [],
  List<BirdColor> colors = const [],
  List<Contact> contacts = const [],
  List<Species> species = const [],
  List<Finance> finances = const [],
  List<FinanceCategory> financeCategories = const [],
}) =>
    BirdBreederResources(
      birds: birds,
      birdImages: const [],
      breedingPairs: breedingPairs,
      broods: broods,
      eggs: eggs,
      cages: cages,
      colors: colors,
      contacts: contacts,
      species: species,
      financesCategories: financeCategories,
      finances: finances,
    );

/// Registers a [BirdBreederCubit] that serves [resources], so the `*Resolved`
/// extensions the export columns rely on can look ids up.
void registerSeededResources(BirdBreederResources resources) {
  s1.registerSingleton<BirdBreederCubit>(_SeededBirdBreederCubit(resources));
}
