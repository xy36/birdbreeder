import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/bird_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/bird/dtos/bird_dto.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';

@AutoMappr([
  MapType<Bird, BirdDto>(),
  MapType<BirdDto, Bird>(),
])
class BirdMapper extends $BirdMapper {}
