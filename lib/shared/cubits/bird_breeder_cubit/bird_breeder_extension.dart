import 'package:birdbreeder/features/birds/data/dtos/bird_dto.dart';
import 'package:birdbreeder/features/birds/data/dtos/egg_dto.dart';
import 'package:birdbreeder/features/breedings/data/dtos/breeding_pair_dto.dart';
import 'package:birdbreeder/features/breedings/data/dtos/brood_dto.dart';
import 'package:birdbreeder/features/contacts/data/dtos/contact_dto.dart';
import 'package:birdbreeder/features/ressourcen_center/data/dtos/bird_color_dto.dart';
import 'package:birdbreeder/features/ressourcen_center/data/dtos/cage_dto.dart';
import 'package:birdbreeder/features/ressourcen_center/data/dtos/species_dto.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/pocketbase_service.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_resolver.dart';

extension BirdBreederSubscriptionExtension on BirdBreederCubit {
  void subscribeToCages() {
    s1.get<PocketBaseService>().cagesCollection.subscribe(
      '*',
      (e) {
        if (e.record == null) return;
        final cage = CageDto.fromJson(e.record!.toJson());

        switch (e.action) {
          case 'update':
            emitLoaded(
              cages: state.birdBreederResources.cages
                  .map((e) => e.id == cage.id ? resolveCageDto(cage) : e)
                  .toList(),
            );

            break;
          case 'create':
            emitLoaded(
              cages: [
                ...state.birdBreederResources.cages,
                resolveCageDto(cage),
              ],
            );
            break;
          case 'delete':
            emitLoaded(
              cages: state.birdBreederResources.cages
                  .where((e) => e.id != cage.id)
                  .toList(),
            );
            break;
        }
      },
    );
  }

  void unsubscribeFromCages() {
    s1.get<PocketBaseService>().cagesCollection.unsubscribe();
  }

  void subscribeToColors() {
    s1.get<PocketBaseService>().colorsCollection.subscribe(
      '*',
      (e) {
        if (e.record == null) return;
        final color = BirdColorDto.fromJson(e.record!.toJson());

        switch (e.action) {
          case 'update':
            emitLoaded(
              colors: state.birdBreederResources.colors
                  .map((e) => e.id == color.id ? resolveColorDto(color) : e)
                  .toList(),
            );
            break;
          case 'create':
            emitLoaded(
              colors: [
                ...state.birdBreederResources.colors,
                resolveColorDto(color),
              ],
            );
            break;
          case 'delete':
            emitLoaded(
              colors: state.birdBreederResources.colors
                  .where((e) => e.id != color.id)
                  .toList(),
            );
            break;
        }
      },
    );
  }

  void unsubscribeFromColors() {
    s1.get<PocketBaseService>().colorsCollection.unsubscribe();
  }

  void subscribeToContacts() {
    s1.get<PocketBaseService>().contactsCollection.subscribe(
      '*',
      (e) {
        if (e.record == null) return;
        final contact = ContactDto.fromJson(e.record!.toJson());

        switch (e.action) {
          case 'update':
            emitLoaded(
              contacts: state.birdBreederResources.contacts
                  .map(
                    (e) => e.id == contact.id ? resolveContactDto(contact) : e,
                  )
                  .toList(),
            );
            break;
          case 'create':
            emitLoaded(
              contacts: [
                ...state.birdBreederResources.contacts,
                resolveContactDto(contact),
              ],
            );
            break;
          case 'delete':
            emitLoaded(
              contacts: state.birdBreederResources.contacts
                  .where((e) => e.id != contact.id)
                  .toList(),
            );
            break;
        }
      },
    );
  }

  void unsubscribeFromContacts() {
    s1.get<PocketBaseService>().contactsCollection.unsubscribe();
  }

  void subscribeToSpecies() {
    s1.get<PocketBaseService>().speciesCollection.subscribe(
      '*',
      (e) {
        if (e.record == null) return;
        final species = SpeciesDto.fromJson(e.record!.toJson());

        switch (e.action) {
          case 'update':
            emitLoaded(
              species: state.birdBreederResources.species
                  .map(
                    (e) => e.id == species.id ? resolveSpeciesDto(species) : e,
                  )
                  .toList(),
            );

            break;
          case 'create':
            emitLoaded(
              species: [
                ...state.birdBreederResources.species,
                resolveSpeciesDto(species),
              ],
            );
            break;
          case 'delete':
            emitLoaded(
              species: state.birdBreederResources.species
                  .where((e) => e.id != species.id)
                  .toList(),
            );
            break;
        }
      },
    );
  }

  void unsubscribeFromSpecies() {
    s1.get<PocketBaseService>().speciesCollection.unsubscribe();
  }

  void subscribeToBreedingPairs() {
    s1.get<PocketBaseService>().breedingPairCollection.subscribe(
      '*',
      (e) {
        if (e.record == null) return;
        final breedingPair = BreedingPairDto.fromJson(e.record!.toJson());

        switch (e.action) {
          case 'update':
            emitLoaded(
              breedingPairs: state.birdBreederResources.breedingPairs
                  .map(
                    (e) => e.id == breedingPair.id
                        ? resolveBreedingPairDto(breedingPair)
                        : e,
                  )
                  .toList(),
            );
            break;
          case 'create':
            emitLoaded(
              breedingPairs: [
                ...state.birdBreederResources.breedingPairs,
                resolveBreedingPairDto(breedingPair),
              ],
            );
            break;
          case 'delete':
            emitLoaded(
              breedingPairs: state.birdBreederResources.breedingPairs
                  .where((e) => e.id != breedingPair.id)
                  .toList(),
            );
            break;
        }
      },
    );
  }

  void unsubscribeFromBreedingPairs() {
    s1.get<PocketBaseService>().breedingPairCollection.unsubscribe();
  }

  void subscribeToBirds() {
    s1.get<PocketBaseService>().birdsCollection.subscribe(
      '*',
      (e) {
        if (e.record == null) return;
        final bird = BirdDto.fromJson(e.record!.toJson());

        switch (e.action) {
          case 'update':
            emitLoaded(
              birds: state.birdBreederResources.birds
                  .map((e) => e.id == bird.id ? resolveBirdDto(bird) : e)
                  .toList(),
            );
            break;
          case 'create':
            emitLoaded(
              birds: [
                ...state.birdBreederResources.birds,
                resolveBirdDto(bird),
              ],
            );
            break;
          case 'delete':
            emitLoaded(
              birds: state.birdBreederResources.birds
                  .where((e) => e.id != bird.id)
                  .toList(),
            );
            break;
        }
      },
    );
  }

  void unsubscribeFromBirds() {
    s1.get<PocketBaseService>().birdsCollection.unsubscribe();
  }

  void subscribeToBroods() {
    s1.get<PocketBaseService>().broodsCollection.subscribe(
      '*',
      (e) {
        if (e.record == null) return;
        final brood = BroodDto.fromJson(e.record!.toJson());

        switch (e.action) {
          case 'update':
            emitLoaded(
              broods: state.birdBreederResources.broods
                  .map(
                    (e) => e.id == brood.id ? resolveBroodDto(brood) : e,
                  )
                  .toList(),
            );
            break;
          case 'create':
            emitLoaded(
              broods: [
                ...state.birdBreederResources.broods,
                resolveBroodDto(brood),
              ],
            );
            break;
          case 'delete':
            emitLoaded(
              broods: state.birdBreederResources.broods
                  .where((e) => e.id != brood.id)
                  .toList(),
            );
            break;
        }
      },
    );
  }

  void unsubscribeFromBroods() {
    s1.get<PocketBaseService>().broodsCollection.unsubscribe();
  }

  void subscribeToEggs() {
    s1.get<PocketBaseService>().eggsCollection.subscribe(
      '*',
      (e) {
        if (e.record == null) return;
        final egg = EggDto.fromJson(e.record!.toJson());

        switch (e.action) {
          case 'update':
            emitLoaded(
              eggs: state.birdBreederResources.eggs
                  .map((e) => e.id == egg.id ? resolveEggDto(egg) : e)
                  .toList(),
            );
            break;
          case 'create':
            emitLoaded(
              eggs: [
                ...state.birdBreederResources.eggs,
                resolveEggDto(egg),
              ],
            );
            break;
          case 'delete':
            emitLoaded(
              eggs: state.birdBreederResources.eggs
                  .where((e) => e.id != egg.id)
                  .toList(),
            );
            break;
        }
      },
    );
  }

  void unsubscribeFromEggs() {
    s1.get<PocketBaseService>().eggsCollection.unsubscribe();
  }
}
