import 'package:birdbreeder/mapper/bird_color_mapper.dart';
import 'package:birdbreeder/mapper/bird_mapper.dart';
import 'package:birdbreeder/mapper/breeding_pair_mapper.dart';
import 'package:birdbreeder/mapper/brood_mapper.dart';
import 'package:birdbreeder/mapper/cage_mapper.dart';
import 'package:birdbreeder/mapper/contact_mapper.dart';
import 'package:birdbreeder/mapper/egg_mapper.dart';
import 'package:birdbreeder/mapper/finances_categories_mapper.dart';
import 'package:birdbreeder/mapper/finances_mapper.dart';
import 'package:birdbreeder/mapper/species_mapper.dart';
import 'package:birdbreeder/mapper/user_mapper.dart';
import 'package:birdbreeder/models/authentication/dtos/user_dto.dart';
import 'package:birdbreeder/models/authentication/entity/user.dart';
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

extension BirdMapperExtension on Bird {
  BirdDto toDto() {
    return BirdMapper().convert(this);
  }
}

extension BirdDtoMapperExtension on BirdDto {
  Bird toModel() {
    return BirdMapper().convert(this);
  }
}

extension BirdColorMapperExtension on BirdColor {
  BirdColorDto toDto() {
    return BirdColorMapper().convert<BirdColor, BirdColorDto>(this);
  }
}

extension BirdColorDtoMapperExtension on BirdColorDto {
  BirdColor toModel() {
    return BirdColorMapper().convert<BirdColorDto, BirdColor>(this);
  }
}

extension ContactMapperExtension on Contact {
  ContactDto toDto() {
    return ContactMapper().convert<Contact, ContactDto>(this);
  }
}

extension ContactDtoMapperExtension on ContactDto {
  Contact toModel() {
    return ContactMapper().convert<ContactDto, Contact>(this);
  }
}

extension SpeciesMapperExtension on Species {
  SpeciesDto toDto() {
    return SpeciesMapper().convert<Species, SpeciesDto>(this);
  }
}

extension SpeciesDtoMapperExtension on SpeciesDto {
  Species toModel() {
    return SpeciesMapper().convert<SpeciesDto, Species>(this);
  }
}

extension CageMapperExtension on Cage {
  CageDto toDto() {
    return CageMapper().convert<Cage, CageDto>(this);
  }
}

extension CageDtoMapperExtension on CageDto {
  Cage toModel() {
    return CageMapper().convert<CageDto, Cage>(this);
  }
}

extension UserMapperExtension on UserDto {
  User toModel() {
    return UserMapper().convert<UserDto, User>(this);
  }
}

extension UserDtoMapperExtension on User {
  UserDto toDto() {
    return UserMapper().convert<User, UserDto>(this);
  }
}

extension BreedingPairMapperExtension on BreedingPair {
  BreedingPairDto toDto() {
    return BreedingPairMapper().convert<BreedingPair, BreedingPairDto>(this);
  }
}

extension BreedingPairDtoMapperExtension on BreedingPairDto {
  BreedingPair toModel() {
    return BreedingPairMapper().convert<BreedingPairDto, BreedingPair>(this);
  }
}

extension BroodMapperExtension on Brood {
  BroodDto toDto() {
    return BroodMapper().convert<Brood, BroodDto>(this);
  }
}

extension BroodDtoMapperExtension on BroodDto {
  Brood toModel() {
    return BroodMapper().convert<BroodDto, Brood>(this);
  }
}

extension EggMapperExtension on Egg {
  EggDto toDto() {
    return EggMapper().convert<Egg, EggDto>(this);
  }
}

extension EggDtoMapperExtension on EggDto {
  Egg toModel() {
    return EggMapper().convert<EggDto, Egg>(this);
  }
}

extension FinanceCategoryExtension on FinanceCategory {
  FinanceCategoryDto toDto() {
    return FinancesCategoriesMapper()
        .convert<FinanceCategory, FinanceCategoryDto>(this);
  }
}

extension FinanceCategoryDtoExtension on FinanceCategoryDto {
  FinanceCategory toModel() {
    return FinancesCategoriesMapper()
        .convert<FinanceCategoryDto, FinanceCategory>(this);
  }
}

extension FinanceExtension on Finance {
  FinanceDto toDto() {
    return FinancesMapper().convert<Finance, FinanceDto>(this);
  }
}

extension FinanceDtoExtension on FinanceDto {
  Finance toModel() {
    return FinancesMapper().convert<FinanceDto, Finance>(this);
  }
}
