import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/features/ressourcen_center/data/dtos/species_dto.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/mapper/species_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/species.dart';

@AutoMappr([
  MapType<Species, SpeciesDto>(),
  MapType<SpeciesDto, Species>(),
])
class SpeciesMapper extends $SpeciesMapper {}
