import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/core/utils/user_helper.dart';
import 'package:birdbreeder/features/birds/data/dtos/bird_dto.dart';
import 'package:birdbreeder/features/birds/domain/mapper/bird_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/cages/domain/mapper/cage_mapper.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/colors/domain/mapper/bird_color_mapper.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/species/domain/mapper/species_mapper.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';

@AutoMappr([
  MapType<BirdDto, Bird>(
    fields: [
      Field('species', custom: BirdMapper.convertSpeciesFromDto),
      Field('color', custom: BirdMapper.convertColorFromDto),
      Field('cage', custom: BirdMapper.convertCageFromDto),
      Field('father', custom: BirdMapper.convertFatherFromDto),
      Field('mother', custom: BirdMapper.convertMotherFromDto),
    ],
  ),
  MapType<Bird, BirdDto>(
    fields: [
      Field('species', custom: BirdMapper.convertSpeciesFromModel),
      Field('color', custom: BirdMapper.convertColorFromModel),
      Field('cage', custom: BirdMapper.convertCageFromModel),
      Field('father', custom: BirdMapper.convertFatherFromModel),
      Field('mother', custom: BirdMapper.convertMotherFromModel),
      //TODO: find way that the user is added in backend logic
      Field('user', custom: UserHelper.insertUser),
    ],
  ),
])
class BirdMapper extends $BirdMapper {
  static Species? convertSpeciesFromDto(BirdDto dto) =>
      dto.expand?.species != null
          ? SpeciesMapper().convert(dto.expand!.species)
          : null;

  static String? convertSpeciesFromModel(Bird model) => model.species?.id;

  static BirdColor? convertColorFromDto(BirdDto dto) =>
      dto.expand?.color != null
          ? BirdColorMapper().convert(dto.expand!.color)
          : null;

  static String? convertColorFromModel(Bird model) => model.color?.id;

  static Cage? convertCageFromDto(BirdDto dto) =>
      dto.expand?.cage != null ? CageMapper().convert(dto.expand!.cage) : null;

  static String? convertCageFromModel(Bird model) => model.cage?.id;

  static Bird? convertFatherFromDto(BirdDto dto) => dto.expand?.father != null
      ? BirdMapper().convert(dto.expand!.father)
      : null;

  static String? convertFatherFromModel(Bird model) => model.father?.id;

  static Bird? convertMotherFromDto(BirdDto dto) => dto.expand?.mother != null
      ? BirdMapper().convert(dto.expand!.mother)
      : null;

  static String? convertMotherFromModel(Bird model) => model.mother?.id;
}
