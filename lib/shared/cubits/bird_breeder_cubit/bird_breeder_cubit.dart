import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/features/birds/data/dtos/bird_dto.dart';
import 'package:birdbreeder/features/birds/data/dtos/egg_dto.dart';
import 'package:birdbreeder/features/birds/data/dtos/finances_categories_dto.dart';
import 'package:birdbreeder/features/birds/data/dtos/finances_dto.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/egg.dart';
import 'package:birdbreeder/features/birds/domain/models/finances.dart';
import 'package:birdbreeder/features/birds/domain/models/finances_categories.dart';
import 'package:birdbreeder/features/breedings/data/dtos/breeding_pair_dto.dart';
import 'package:birdbreeder/features/breedings/data/dtos/brood_dto.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/features/contacts/data/dtos/contact_dto.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/ressourcen_center/data/dtos/bird_color_dto.dart';
import 'package:birdbreeder/features/ressourcen_center/data/dtos/cage_dto.dart';
import 'package:birdbreeder/features/ressourcen_center/data/dtos/species_dto.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/bird_color.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/cage.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/species.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit_event.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_extension.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_resolver.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/models/bird_breeder_resources.dart';
import 'package:birdbreeder/shared/repositories/ressource_repository.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_breeder_cubit.freezed.dart';
part 'bird_breeder_state.dart';

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
          const BirdBreederState.initial(
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
          ),
        ) {
    subscribeToBirds();
    subscribeToCages();
    subscribeToColors();
    subscribeToContacts();
    subscribeToSpecies();
    subscribeToBreedingPairs();
    subscribeToBroods();
    subscribeToEggs();
    subscribeToFinances();
    subscribeToFinancesCategories();

    initialLoad();
  }

  final RessourceRepository<BirdColorDto> _birdColorsRepository;
  final RessourceRepository<ContactDto> _contactsRepository;
  final RessourceRepository<CageDto> _cagesRepository;
  final RessourceRepository<SpeciesDto> _speciesRepository;
  final RessourceRepository<BreedingPairDto> _breedingsRepository;
  final RessourceRepository<BroodDto> _broodsRepository;
  final RessourceRepository<BirdDto> _birdsRepository;
  final RessourceRepository<EggDto> _eggsRepository;
  final RessourceRepository<FinancesDto> _financesRepository;
  final RessourceRepository<FinancesCategoriesDto>
      _financesCategoriesRepository;

  Future<void> initialLoad() async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final birdsF = _fetchBirds();
    final pairsF = _fetchBreedingPairs();
    final broodsF = _fetchBroods();
    final cagesF = _fetchCages();
    final colorsF = _fetchColors();
    final contactsF = _fetchContacts();
    final speciesF = _fetchSpecies();
    final eggsF = _fetchEggs();
    final financesCategoriesF = _fetchFinancesCategories();
    final financesF = _fetchFinances();

    await Future.wait(
      [
        birdsF,
        pairsF,
        broodsF,
        cagesF,
        colorsF,
        contactsF,
        speciesF,
        eggsF,
        financesCategoriesF,
        financesF,
      ],
    );

    final birds = await birdsF;
    final breedingPairs = await pairsF;
    final broods = await broodsF;
    final cages = await cagesF;
    final colors = await colorsF;
    final contacts = await contactsF;
    final species = await speciesF;
    final eggs = await eggsF;
    final financesCategories = await financesCategoriesF;
    final finances = await financesF;

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
    List<FinancesCategories>? financesCategories,
    List<Finances>? finances,
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

  @override
  Future<void> close() {
    unsubscribeFromCages();
    unsubscribeFromColors();
    unsubscribeFromContacts();
    unsubscribeFromSpecies();
    unsubscribeFromBreedingPairs();
    unsubscribeFromBirds();
    unsubscribeFromBroods();
    unsubscribeFromEggs();
    unsubscribeFromFinances();
    unsubscribeFromFinancesCategories();

    return super.close();
  }

  Future<Brood?> addBrood(Brood brood) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _broodsRepository.create(
      brood.toDto(),
    );

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.addFailed(),
      );
      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return null;
    }
    return result.asValue?.value.toModel();
  }

  Future<void> deleteBrood(String id) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _broodsRepository.delete(id);

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.deleteFailed(),
      );
      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return;
    }

    // After deleting the brood, we need to update all breeding pairs that contain this brood
    final birds = state.birdBreederResources.birds;

    birds
        .where(
      (bird) => bird.broodId == id,
    )
        .forEach(
      (bird) async {
        final result = await _birdsRepository.update(
          bird.id,
          bird.copyWith(broodId: null).toDto(),
        );

        if (result.isError) {
          emitPresentation(
            const BirdBreederCubitEvent.updateFailed(),
          );
        }
      },
    );
  }

  Future<Brood?> updateBrood(Brood brood) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _broodsRepository.update(brood.id, brood.toDto());

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.updateFailed(),
      );
      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return null;
    }
    return result.asValue?.value.toModel();
  }

  Future<void> deleteColor(BirdColor color) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _birdColorsRepository.delete(color.id);

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.deleteFailed(),
      );
      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return;
    }

    // After deleting the color, we need to update all birds that have this color
    final birds = state.birdBreederResources.birds;

    birds
        .where(
      (bird) => bird.colorId == color.id,
    )
        .forEach(
      (bird) async {
        await updateBird(bird.copyWith(colorId: null));
      },
    );
  }

  Future<BirdColor?> addColor(BirdColor color) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _birdColorsRepository.create(color.toDto());

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.addFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return null;
    }
    return result.asValue?.value.toModel();
  }

  Future<BirdColor?> updateColor(BirdColor color) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _birdColorsRepository.update(color.id, color.toDto());

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.updateFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return null;
    }

    // After updating the color, we need to update all birds that have this color
    final birds = state.birdBreederResources.birds;
    birds
        .where(
      (bird) => bird.colorId == color.id,
    )
        .forEach(
      (bird) async {
        await updateBird(bird.copyWith(colorId: color.id));
      },
    );

    return result.asValue?.value.toModel();
  }

  Future<Contact?> addContact(Contact contact) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _contactsRepository.create(contact.toDto());

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.addFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return null;
    }
    return result.asValue?.value.toModel();
  }

  Future<Contact?> updateContact(Contact contact) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result =
        await _contactsRepository.update(contact.id, contact.toDto());

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.updateFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return null;
    }
    return result.asValue?.value.toModel();
  }

  Future<void> deleteContact(Contact contact) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _contactsRepository.delete(contact.id);

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.deleteFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return;
    }

    // After deleting the contact, we need to update all birds that have this contact
    //TODO: add this when we have a contact field in the bird
    // final birds = state.birdBreederResources.birds;

    // birds
    //     .where(
    //   (bird) => bird.contact?.contains(contact.id) ?? false,
    // )
    //     .forEach(
    //   (bird) async {
    //     await _birdsRepository.update(
    //       bird.id,
    //       bird.copyWith(contact: null).toDto(),
    //     );
    //   },
    // );
  }

  Future<Bird?> addBird(Bird bird) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _birdsRepository.create(bird.toDto());

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.addFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return null;
    }

    return result.asValue?.value.toModel();
  }

  // create crud methods for cages
  Future<Cage?> addCage(Cage cage) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _cagesRepository.create(cage.toDto());

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.addFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return null;
    }

    return result.asValue?.value.toModel();
  }

  Future<Cage?> updateCage(Cage cage) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _cagesRepository.update(cage.id, cage.toDto());

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.updateFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return null;
    }
    return result.asValue?.value.toModel();
  }

  Future<void> deleteCage(Cage cage) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _cagesRepository.delete(cage.id);

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.deleteFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return;
    }

    // After deleting the cage, we need to update all birds that have this cage
    final birds = state.birdBreederResources.birds;

    birds
        .where(
      (bird) => bird.cageId == cage.id,
    )
        .forEach(
      (bird) async {
        await updateBird(bird.copyWith(cageId: null));
      },
    );
  }

  Future<Species?> addSpecies(Species species) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _speciesRepository.create(species.toDto());

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.addFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return null;
    }

    return result.asValue?.value.toModel();
  }

  Future<Species?> updateSpecies(Species species) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _speciesRepository.update(species.id, species.toDto());

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.updateFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return null;
    }

    return result.asValue?.value.toModel();
  }

  Future<void> deleteSpecies(Species species) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _speciesRepository.delete(species.id);

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.deleteFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return;
    }

    // After deleting the species, we need to update all birds that have this species
    final birds = state.birdBreederResources.birds;

    birds
        .where(
      (bird) => bird.speciesId == species.id,
    )
        .forEach(
      (bird) async {
        await updateBird(bird.copyWith(speciesId: null));
      },
    );
  }

  Future<BreedingPair?> addBreedingPair(BreedingPair breedingPair) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _breedingsRepository.create(breedingPair.toDto());

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.addFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return null;
    }
    return result.asValue?.value.toModel();
  }

  Future<BreedingPair?> updateBreedingPair(BreedingPair breedingPair) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _breedingsRepository.update(
      breedingPair.id,
      breedingPair.toDto(),
    );

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.updateFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return null;
    }

    return result.asValue?.value.toModel();

    // TODO: After updating the breeding pair, we need to update all broods that have this breeding pair
  }

  Future<void> deleteBreedingPair(BreedingPair breedingPair) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _breedingsRepository.delete(breedingPair.id);

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.deleteFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return;
    }

    //TODO: After deleting the breeding pair, we need to update all broods that have this breeding pair?
  }

  Future<Bird?> updateBird(Bird bird) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    await Future.delayed(const Duration(milliseconds: 1000));

    final result = await _birdsRepository.update(bird.id, bird.toDto());

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.updateFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return null;
    }

    return result.asValue?.value.toModel();
  }

  Future<void> deleteBird(Bird bird) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _birdsRepository.delete(bird.id);

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.deleteFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return;
    }
  }

  Future<void> duplicateBird(Bird bird) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _birdsRepository.create(
      bird
          .copyWith(
            id: '',
            ringNumber: 'Copy of ${bird.ringNumber ?? ''}',
          )
          .toDto(),
    );

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.duplicateFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
    }
  }

  Future<Egg?> addEgg(Egg egg) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _eggsRepository.create(egg.toDto());

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.addFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return null;
    }
    return result.asValue?.value.toModel();
  }

  Future<Egg?> updateEgg(Egg egg) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _eggsRepository.update(egg.id, egg.toDto());

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.updateFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return null;
    }
    return result.asValue?.value.toModel();
  }

  Future<void> deleteEgg(Egg egg) async {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
    );

    final result = await _eggsRepository.delete(egg.id);

    if (result.isError) {
      emitPresentation(
        const BirdBreederCubitEvent.deleteFailed(),
      );

      emit(
        BirdBreederLoaded(
          birdBreederResources: state.birdBreederResources,
        ),
      );
      return;
    }
  }

  Future<List<Species>> getSpecies() async {
    return state.birdBreederResources.species;
  }

  Future<List<Cage>> getCages() async {
    return state.birdBreederResources.cages;
  }

  Future<List<BirdColor>> getColors() async {
    return state.birdBreederResources.colors;
  }

  // --- Helpers ---
  Future<List<Bird>> _fetchBirds() async {
    final res = await _birdsRepository.getAll();
    return res.asValue?.value.map(resolveBirdDto).toList() ?? const [];
  }

  Future<List<BreedingPair>> _fetchBreedingPairs() async {
    final res = await _breedingsRepository.getAll();
    return res.asValue?.value.map(resolveBreedingPairDto).toList() ?? const [];
  }

  Future<List<Brood>> _fetchBroods() async {
    final res = await _broodsRepository.getAll();
    return res.asValue?.value.map(resolveBroodDto).toList() ?? const [];
  }

  Future<List<Cage>> _fetchCages() async {
    final res = await _cagesRepository.getAll();
    return res.asValue?.value.map(resolveCageDto).toList() ?? const [];
  }

  Future<List<BirdColor>> _fetchColors() async {
    final res = await _birdColorsRepository.getAll();
    return res.asValue?.value.map(resolveColorDto).toList() ?? const [];
  }

  Future<List<Contact>> _fetchContacts() async {
    final res = await _contactsRepository.getAll();
    return res.asValue?.value.map(resolveContactDto).toList() ?? const [];
  }

  Future<List<Species>> _fetchSpecies() async {
    final res = await _speciesRepository.getAll();
    return res.asValue?.value.map(resolveSpeciesDto).toList() ?? const [];
  }

  Future<List<Egg>> _fetchEggs() async {
    final res = await _eggsRepository.getAll();
    return res.asValue?.value.map(resolveEggDto).toList() ?? const [];
  }

  Future<List<FinancesCategories>> _fetchFinancesCategories() async {
    final res = await _financesCategoriesRepository.getAll();
    return res.asValue?.value.map(resolveFinancesCategoriesDto).toList() ??
        const [];
  }

  Future<List<Finances>> _fetchFinances() async {
    final res = await _financesRepository.getAll();
    return res.asValue?.value.map(resolveFinancesDto).toList() ?? const [];
  }
}
