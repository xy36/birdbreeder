import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/egg_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/egg/dtos/egg_dto.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';

@AutoMappr([
  MapType<Egg, EggDto>(),
  MapType<EggDto, Egg>(),
])
class EggMapper extends $EggMapper {}
