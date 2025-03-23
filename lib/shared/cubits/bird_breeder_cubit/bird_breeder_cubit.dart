import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/data/dtos/bird_dto.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/breedings/data/dtos/breeding_pair_dto.dart';
import 'package:birdbreeder/features/breedings/data/dtos/brood_dto.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/features/cages/data/dtos/cage_dto.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/colors/data/dtos/bird_color_dto.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/contacts/data/dtos/contact_dto.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/species/data/dtos/species_dto.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_extension.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_resolver.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/models/bird_breeder_resources.dart';
import 'package:birdbreeder/shared/repositories/ressource_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_breeder_cubit.freezed.dart';
part 'bird_breeder_state.dart';

class BirdBreederCubit extends Cubit<BirdBreederState> {
  BirdBreederCubit(
    this._breedingsRepository,
    this._birdsRepository,
    this._contactsRepository,
    this._birdColorsRepository,
    this._cagesRepository,
    this._speciesRepository,
    this._broodsRepository,
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

    initialLoad();
  }

  final RessourceRepository<BirdColorDto> _birdColorsRepository;
  final RessourceRepository<ContactDto> _contactsRepository;
  final RessourceRepository<CageDto> _cagesRepository;
  final RessourceRepository<SpeciesDto> _speciesRepository;
  final RessourceRepository<BreedingPairDto> _breedingsRepository;
  final RessourceRepository<BroodDto> _broodsRepository;
  final RessourceRepository<BirdDto> _birdsRepository;

  Future<void> initialLoad() async {
    emitLoading();

    await loadCages();
    await loadColors();
    await loadContacts();
    await loadSpecies();
    await loadBroods();
    await loadBirds();
    await loadBreedingPairs();
  }

  Future<void> loadBirds({bool silently = true}) async {
    if (!silently) emitLoading();

    final birds = await _birdsRepository.getAll();
    final resolvedBirds = birds.asValue?.value.map(resolveBirdDto).toList();

    emitLoaded(birds: resolvedBirds);
  }

  Future<void> loadBreedingPairs({bool silently = true}) async {
    if (!silently) emitLoading();

    final breedingPairs = await _breedingsRepository.getAll();
    final resolvedBreedingPairs =
        breedingPairs.asValue?.value.map(resolveBreedingPairDto).toList();

    emitLoaded(breedingPairs: resolvedBreedingPairs);
  }

  Future<void> loadBroods({bool silently = true}) async {
    if (!silently) emitLoading();

    final broods = await _broodsRepository.getAll();
    final resolvedBroods = broods.asValue?.value.map(resolveBroodDto).toList();

    emitLoaded(broods: resolvedBroods);
  }

  Future<void> loadCages({bool silently = true}) async {
    if (!silently) emitLoading();

    final cages = await _cagesRepository.getAll();
    final resolvedCages = cages.asValue?.value.map(resolveCageDto).toList();

    emitLoaded(
      cages: resolvedCages,
    );
  }

  Future<void> loadColors({bool silently = true}) async {
    if (!silently) emitLoading();

    final colors = await _birdColorsRepository.getAll();
    final resolvedColors = colors.asValue?.value.map(resolveColorDto).toList();

    emitLoaded(colors: resolvedColors);
  }

  Future<void> loadContacts({bool silently = true}) async {
    if (!silently) emitLoading();

    final contacts = await _contactsRepository.getAll();
    final resolvedContacts =
        contacts.asValue?.value.map(resolveContactDto).toList();

    emitLoaded(contacts: resolvedContacts);
  }

  Future<void> loadSpecies({bool silently = true}) async {
    if (!silently) emitLoading();

    final species = await _speciesRepository.getAll();
    final resolvedSpecies =
        species.asValue?.value.map(resolveSpeciesDto).toList();

    emitLoaded(species: resolvedSpecies);
  }

  void emitLoading() {
    emit(
      BirdBreederLoading(
        birdBreederResources: state.birdBreederResources,
      ),
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

    return super.close();
  }
}
