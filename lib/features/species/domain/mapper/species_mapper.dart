import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/core/utils/user_helper.dart';
import 'package:birdbreeder/features/species/data/dtos/species_dto.dart';
import 'package:birdbreeder/features/species/domain/mapper/species_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';

@AutoMappr([
  MapType<Species, SpeciesDto>(
    fields: [
      Field('user', custom: UserHelper.insertUser),
    ],
  ),
])
class SpeciesMapper extends $SpeciesMapper {}
