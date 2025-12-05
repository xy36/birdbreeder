import 'package:birdbreeder/models/bird/dtos/bird_dto.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/breeding/dtos/breeding_pair_dto.dart';
import 'package:birdbreeder/models/breeding/dtos/brood_dto.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/models/contact/dtos/contact_dto.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/egg/dtos/egg_dto.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/models/finance/dtos/finance_category_dto.dart';
import 'package:birdbreeder/models/finance/dtos/finance_dto.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/ressources/dto/bird_color_dto.dart';
import 'package:birdbreeder/models/ressources/dto/cage_dto.dart';
import 'package:birdbreeder/models/ressources/dto/species_dto.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
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
      phone: contactDto.phone,
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
      fatherId: breedingPairDto.fatherId,
      motherId: breedingPairDto.motherId,
      cageId: breedingPairDto.cageId,
      start: breedingPairDto.start,
      end: breedingPairDto.end,
      status: breedingPairDto.status,
      notes: breedingPairDto.notes,
    );
  }

  Bird resolveBirdDto(BirdDto birdDto) {
    return Bird(
      id: birdDto.id,
      ringNumber: birdDto.ringNumber,
      speciesId: birdDto.speciesId,
      colorId: birdDto.colorId,
      fatherId: birdDto.fatherId,
      motherId: birdDto.motherId,
      cageId: birdDto.cageId,
      broodId: birdDto.broodId,
      laidAt: birdDto.laidAt,
      hatchedAt: birdDto.hatchedAt,
      fledgedAt: birdDto.fledgedAt,
      diedAt: birdDto.diedAt,
      saleStatus: birdDto.saleStatus,
      listedAt: birdDto.listedAt,
      soldAt: birdDto.soldAt,
      askingPrice: birdDto.askingPrice,
      finalPrice: birdDto.finalPrice,
      boughtAt: birdDto.boughtAt,
      boughtPrice: birdDto.boughtPrice,
      sex: birdDto.sex,
      notes: birdDto.notes,
      boughtFromId: birdDto.boughtFromId,
      soldToId: birdDto.soldToId,
      ownerId: birdDto.ownerId,
      created: birdDto.created,
      updated: birdDto.updated,
      bornAt: birdDto.bornAt,
      unknownLifecycle: birdDto.unknownLifecycle,
    );
  }

  Brood resolveBroodDto(BroodDto broodDto) {
    return Brood(
      id: broodDto.id,
      start: broodDto.start,
      end: broodDto.end,
      notes: broodDto.notes,
      cage: broodDto.cage,
      breedingPair: broodDto.breedingPair,
    );
  }

  Egg resolveEggDto(EggDto eggDto) {
    return Egg(
      id: eggDto.id,
      broodId: eggDto.broodId,
      number: eggDto.number,
      laidAt: eggDto.laidAt,
      hatchedAt: eggDto.hatchedAt,
      fledgedAt: eggDto.fledgedAt,
      status: eggDto.status,
      ringnumber: eggDto.ringnumber,
      colorId: eggDto.colorId,
      cageId: eggDto.cageId,
      speciesId: eggDto.speciesId,
      birdId: eggDto.birdId,
      notes: eggDto.notes,
    );
  }

  FinanceCategory resolveFinancesCategoriesDto(
    FinanceCategoryDto financesCategoriesDto,
  ) {
    return FinanceCategory(
      id: financesCategoriesDto.id,
      name: financesCategoriesDto.name,
      color: financesCategoriesDto.color,
      kind: financesCategoriesDto.kind,
    );
  }

  FinanceCategoryDto resolveFinancesCategories(
    FinanceCategory financesCategories,
  ) {
    return FinanceCategoryDto(
      id: financesCategories.id,
      name: financesCategories.name,
      color: financesCategories.color,
      kind: financesCategories.kind,
    );
  }

  Finance resolveFinancesDto(
    FinanceDto financesDto,
  ) {
    return Finance(
      id: financesDto.id,
      categoryId: financesDto.categoryId,
      birdId: financesDto.birdId,
      date: financesDto.date,
      amount: financesDto.amount,
      title: financesDto.title,
      notes: financesDto.notes,
    );
  }

  FinanceDto resolveFinances(
    Finance financesDto,
  ) {
    return FinanceDto(
      id: financesDto.id,
      amount: financesDto.amount,
      categoryId: financesDto.categoryId,
      date: financesDto.date,
      birdId: financesDto.birdId,
      title: financesDto.title,
      notes: financesDto.notes,
    );
  }
}
