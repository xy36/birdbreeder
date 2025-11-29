import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/species_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/models/ressources/dto/species_dto.dart';

@AutoMappr([
  MapType<Species, SpeciesDto>(),
  MapType<SpeciesDto, Species>(),
])
class SpeciesMapper extends $SpeciesMapper {}
