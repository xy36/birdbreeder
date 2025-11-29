import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/bird_color_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/models/ressources/dto/bird_color_dto.dart';

@AutoMappr([
  MapType<BirdColor, BirdColorDto>(),
  MapType<BirdColorDto, BirdColor>(),
])
class BirdColorMapper extends $BirdColorMapper {}
