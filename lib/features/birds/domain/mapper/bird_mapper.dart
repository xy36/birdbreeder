import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/features/birds/data/dtos/bird_dto.dart';
import 'package:birdbreeder/features/birds/domain/mapper/bird_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';

@AutoMappr([
  MapType<Bird, BirdDto>(),
  MapType<BirdDto, Bird>(),
])
class BirdMapper extends $BirdMapper {}
