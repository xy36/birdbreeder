import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/features/ressourcen_center/data/dtos/bird_color_dto.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/mapper/bird_color_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/bird_color.dart';

@AutoMappr([
  MapType<BirdColor, BirdColorDto>(),
  MapType<BirdColorDto, BirdColor>(),
])
class BirdColorMapper extends $BirdColorMapper {}
