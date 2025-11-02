import 'package:birdbreeder/features/birds/data/dtos/bird_dto.dart';
import 'package:birdbreeder/features/birds/data/dtos/egg_dto.dart';
import 'package:birdbreeder/features/birds/data/dtos/finance_category_dto.dart';
import 'package:birdbreeder/features/birds/data/dtos/finance_dto.dart';
import 'package:birdbreeder/features/birds/domain/mapper/bird_mapper.dart';
import 'package:birdbreeder/features/birds/domain/mapper/egg_mapper.dart';
import 'package:birdbreeder/features/birds/domain/mapper/finances_categories_mapper.dart';
import 'package:birdbreeder/features/birds/domain/mapper/finances_mapper.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/egg.dart';
import 'package:birdbreeder/features/birds/domain/models/finance.dart';
import 'package:birdbreeder/features/birds/domain/models/finance_category.dart';
import 'package:birdbreeder/features/breedings/data/dtos/breeding_pair_dto.dart';
import 'package:birdbreeder/features/breedings/data/dtos/brood_dto.dart';
import 'package:birdbreeder/features/breedings/domain/mapper/breeding_pair_mapper.dart';
import 'package:birdbreeder/features/breedings/domain/mapper/brood_mapper.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/features/contacts/data/dtos/contact_dto.dart';
import 'package:birdbreeder/features/contacts/domain/mapper/contact_mapper.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/ressourcen_center/data/dtos/bird_color_dto.dart';
import 'package:birdbreeder/features/ressourcen_center/data/dtos/cage_dto.dart';
import 'package:birdbreeder/features/ressourcen_center/data/dtos/species_dto.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/mapper/bird_color_mapper.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/mapper/cage_mapper.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/mapper/species_mapper.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/bird_color.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/cage.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/species.dart';
import 'package:birdbreeder/services/authentication/dtos/user_dto.dart';
import 'package:birdbreeder/services/authentication/mapper/user_mapper.dart';
import 'package:birdbreeder/services/authentication/models/user.dart';

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
