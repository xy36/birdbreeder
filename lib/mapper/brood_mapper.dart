import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/models/breeding/dtos/brood_dto.dart';
import 'package:birdbreeder/mapper/brood_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';

@AutoMappr([
  MapType<Brood, BroodDto>(),
  MapType<BroodDto, Brood>(),
])
class BroodMapper extends $BroodMapper {}
