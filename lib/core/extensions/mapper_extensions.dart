import 'package:birdbreeder/features/birds/data/dtos/bird_dto.dart';
import 'package:birdbreeder/features/birds/domain/mapper/bird_mapper.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/cages/data/dtos/cage_dto.dart';
import 'package:birdbreeder/features/cages/domain/mapper/cage_mapper.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/colors/data/dtos/bird_color_dto.dart';
import 'package:birdbreeder/features/colors/domain/mapper/bird_color_mapper.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/contacts/data/dtos/contact_dto.dart';
import 'package:birdbreeder/features/contacts/domain/mapper/contact_mapper.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/species/data/dtos/species_dto.dart';
import 'package:birdbreeder/features/species/domain/mapper/species_mapper.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
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
