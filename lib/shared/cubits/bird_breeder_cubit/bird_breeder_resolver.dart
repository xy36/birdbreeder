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
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:collection/collection.dart';

extension BirdBreederResovlerExtension on BirdBreederCubit {
  T? resolveById<T>(String id) {
    return switch (T) {
      Bird => state.birdBreederResources.birds.firstWhereOrNull(
          (element) => element.id == id,
        ) as T?,
      BirdColor => state.birdBreederResources.colors.firstWhereOrNull(
          (element) => element.id == id,
        ) as T?,
      Brood => state.birdBreederResources.broods.firstWhereOrNull(
          (element) => element.id == id,
        ) as T?,
      BreedingPair => state.birdBreederResources.breedingPairs.firstWhereOrNull(
          (element) => element.id == id,
        ) as T?,
      Cage => state.birdBreederResources.cages.firstWhereOrNull(
          (element) => element.id == id,
        ) as T?,
      Contact => state.birdBreederResources.contacts.firstWhereOrNull(
          (element) => element.id == id,
        ) as T?,
      Species => state.birdBreederResources.species.firstWhereOrNull(
          (element) => element.id == id,
        ) as T?,
      _ => throw Exception('Type not supported')
    };
  }

  Cage resolveCageDto(CageDto cageDto) {
    return Cage(
      id: cageDto.id,
      name: cageDto.name,
      description: cageDto.description,
      depth: cageDto.depth,
      height: cageDto.height,
      width: cageDto.width,
    );
  }

  BirdColor resolveColorDto(BirdColorDto colorDto) {
    return BirdColor(
      id: colorDto.id,
      name: colorDto.name,
    );
  }

  Contact resolveContactDto(ContactDto contactDto) {
    return Contact(
      id: contactDto.id,
      name: contactDto.name,
      email: contactDto.email,
      address: contactDto.address,
      city: contactDto.city,
      country: contactDto.country,
      firstName: contactDto.firstName,
      number: contactDto.number,
      postalCode: contactDto.postalCode,
      website: contactDto.website,
    );
  }

  Species resolveSpeciesDto(SpeciesDto speciesDto) {
    return Species(
      id: speciesDto.id,
      name: speciesDto.name,
      latName: speciesDto.latName,
    );
  }

  BreedingPair resolveBreedingPairDto(BreedingPairDto breedingPairDto) {
    return BreedingPair(
      id: breedingPairDto.id,
      father: breedingPairDto.father,
      mother: breedingPairDto.mother,
      start: breedingPairDto.start,
      end: breedingPairDto.end,
      children: breedingPairDto.children,
    );
  }

  Bird resolveBirdDto(BirdDto birdDto) {
    return Bird(
      id: birdDto.id,
      ringnumber: birdDto.ringnumber,
      species: birdDto.species,
      born: birdDto.born,
      bought: birdDto.bought,
      cage: birdDto.cage,
      color: birdDto.color,
      father: birdDto.father,
      mother: birdDto.mother,
      boughtPrice: birdDto.boughtPrice,
      created: birdDto.created,
      sell: birdDto.sell,
      sellPriceOffer: birdDto.sellPriceOffer,
      sellPriceReal: birdDto.sellPriceReal,
      sex: birdDto.sex,
      died: birdDto.died,
      sold: birdDto.sold,
      flowOut: birdDto.flowOut,
      hatched: birdDto.hatched,
      isEgg: birdDto.isEgg,
      laid: birdDto.laid,
      brood: birdDto.brood,
      updated: birdDto.updated,
      children: birdDto.children,
    );
  }

  Brood resolveBroodDto(BroodDto broodDto) {
    return Brood(
      id: broodDto.id,
      start: broodDto.start,
      end: broodDto.end,
      notes: broodDto.notes,
    );
  }
}
