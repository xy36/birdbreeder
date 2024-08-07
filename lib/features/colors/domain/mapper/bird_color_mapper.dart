import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/features/colors/data/dtos/bird_color_dto.dart';
import 'package:birdbreeder/features/colors/domain/mapper/bird_color_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';

@AutoMappr([
  MapType<BirdColorDto, BirdColor>(),
  MapType<BirdColor, BirdColorDto>(),
])
class BirdColorMapper extends $BirdColorMapper {}
