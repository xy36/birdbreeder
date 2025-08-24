import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/features/ressourcen_center/data/dtos/cage_dto.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/mapper/cage_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/cage.dart';

@AutoMappr([
  MapType<Cage, CageDto>(),
  MapType<CageDto, Cage>(),
])
class CageMapper extends $CageMapper {}
