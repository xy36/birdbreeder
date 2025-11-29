import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/cage_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/models/ressources/dto/cage_dto.dart';

@AutoMappr([
  MapType<Cage, CageDto>(),
  MapType<CageDto, Cage>(),
])
class CageMapper extends $CageMapper {}
