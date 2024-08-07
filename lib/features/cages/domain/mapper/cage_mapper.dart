import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/features/cages/data/dtos/cage_dto.dart';
import 'package:birdbreeder/features/cages/domain/mapper/cage_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';

@AutoMappr([
  MapType<CageDto, Cage>(),
  MapType<Cage, CageDto>(),
])
class CageMapper extends $CageMapper {}
