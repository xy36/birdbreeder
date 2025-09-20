import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/features/birds/data/dtos/egg_dto.dart';
import 'package:birdbreeder/features/birds/domain/mapper/egg_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/birds/domain/models/egg.dart';

@AutoMappr([
  MapType<Egg, EggDto>(),
  MapType<EggDto, Egg>(),
])
class EggMapper extends $EggMapper {}
