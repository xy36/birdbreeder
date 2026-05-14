import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird_breeder_resources.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit_event.dart';
import 'package:birdbreeder/shared/repositories/i_crud_repository.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_breeder_cubit.freezed.dart';
part 'bird_breeder_state.dart';
part 'crud_files/bird_breeder_cubit.birds.dart';
part 'crud_files/bird_breeder_cubit.breeding_pairs.dart';
part 'crud_files/bird_breeder_cubit.broods.dart';
part 'crud_files/bird_breeder_cubit.cages.dart';
part 'crud_files/bird_breeder_cubit.colors.dart';
part 'crud_files/bird_breeder_cubit.contacts.dart';
part 'crud_files/bird_breeder_cubit.eggs.dart';
part 'crud_files/bird_breeder_cubit.finances.dart';
part 'crud_files/bird_breeder_cubit.finances_categories.dart';
part 'crud_files/bird_breeder_cubit.species.dart';

class BirdBreederCubit extends Cubit<BirdBreederState>
    with BlocPresentationMixin<BirdBreederState, BirdBreederCubitEvent> {
  BirdBreederCubit(
    this._breedingsRepository,
    this._birdsRepository,
    this._contactsRepository,
    this._birdColorsRepository,
    this._cagesRepository,
    this._speciesRepository,
    this._broodsRepository,
    this._eggsRepository,
    this._financesRepository,
    this._financesCategoriesRepository,
  ) : super(
          initialState(),
        );

  static BirdBreederState initialState() => const BirdBreederState.initial(
        birdBreederResources: BirdBreederResources(
          birds: [],
          breedingPairs: [],
          broods: [],
          cages: [],
          colors: [],
          contacts: [],
          species: [],
          eggs: [],
          finances: [],
          financesCategories: [],
        ),
      );

  final ICrudRepository<BirdColor> _birdColorsRepository;
  final ICrudRepository<Contact> _contactsRepository;
  final ICrudRepository<Cage> _cagesRepository;
  final ICrudRepository<Species> _speciesRepository;
  final ICrudRepository<BreedingPair> _breedingsRepository;
  final ICrudRepository<Brood> _broodsRepository;
  final ICrudRepository<Bird> _birdsRepository;
  final ICrudRepository<Egg> _eggsRepository;
  final ICrudRepository<Finance> _financesRepository;
  final ICrudRepository<FinanceCategory> _financesCategoriesRepository;

  void push(BirdBreederState newState) => emit(newState);

  BirdBreederState loading() =>
      BirdBreederLoading(birdBreederResources: state.birdBreederResources);
  BirdBreederState loaded() =>
      BirdBreederLoaded(birdBreederResources: state.birdBreederResources);

  void presentAddFailed() =>
      emitPresentation(const BirdBreederCubitEvent.addFailed());
  void presentUpdateFailed() =>
      emitPresentation(const BirdBreederCubitEvent.updateFailed());
  void presentDeleteFailed() =>
      emitPresentation(const BirdBreederCubitEvent.deleteFailed());
  void presentDuplicateFailed() =>
      emitPresentation(const BirdBreederCubitEvent.duplicateFailed());

  Future<void> reset() async {
    emit(initialState());
  }

  Future<void> initialLoad() async {
    emit(initialState());

    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final (
      birds,
      breedingPairs,
      broods,
      cages,
      colors,
      contacts,
      species,
      eggs,
      financesCategories,
      finances
    ) = await Future.wait([
      fetchBirds(),
      fetchBreedingPairs(),
      fetchBroods(),
      fetchCages(),
      fetchColors(),
      fetchContacts(),
      fetchSpecies(),
      fetchEggs(),
      fetchFinancesCategories(),
      fetchFinances(),
    ]).then(
      (list) => (
        list[0] as List<Bird>,
        list[1] as List<BreedingPair>,
        list[2] as List<Brood>,
        list[3] as List<Cage>,
        list[4] as List<BirdColor>,
        list[5] as List<Contact>,
        list[6] as List<Species>,
        list[7] as List<Egg>,
        list[8] as List<FinanceCategory>,
        list[9] as List<Finance>,
      ),
    );

    emitLoaded(
      birds: birds,
      breedingPairs: breedingPairs,
      broods: broods,
      cages: cages,
      colors: colors,
      contacts: contacts,
      species: species,
      eggs: eggs,
      financesCategories: financesCategories,
      finances: finances,
    );
  }

  void emitLoaded({
    List<Bird>? birds,
    List<BreedingPair>? breedingPairs,
    List<Brood>? broods,
    List<Cage>? cages,
    List<BirdColor>? colors,
    List<Contact>? contacts,
    List<Species>? species,
    List<Egg>? eggs,
    List<FinanceCategory>? financesCategories,
    List<Finance>? finances,
  }) {
    emit(
      BirdBreederLoaded(
        birdBreederResources: BirdBreederResources(
          birds: birds ?? state.birdBreederResources.birds,
          breedingPairs:
              breedingPairs ?? state.birdBreederResources.breedingPairs,
          broods: broods ?? state.birdBreederResources.broods,
          cages: cages ?? state.birdBreederResources.cages,
          colors: colors ?? state.birdBreederResources.colors,
          contacts: contacts ?? state.birdBreederResources.contacts,
          species: species ?? state.birdBreederResources.species,
          eggs: eggs ?? state.birdBreederResources.eggs,
          finances: finances ?? state.birdBreederResources.finances,
          financesCategories: financesCategories ??
              state.birdBreederResources.financesCategories,
        ),
      ),
    );
  }

  Future<List<Species>> fetchAllResources() async {
    final speciesF = fetchSpecies();
    final cagesF = fetchCages();
    final colorsF = fetchColors();

    await Future.wait(
      [
        speciesF,
        cagesF,
        colorsF,
      ],
    );

    final species = await speciesF;
    final cages = await cagesF;
    final colors = await colorsF;

    emitLoaded(
      species: species,
      cages: cages,
      colors: colors,
    );

    return species;
  }
}
