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

// Public proxy so extensions can trigger state changes
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
