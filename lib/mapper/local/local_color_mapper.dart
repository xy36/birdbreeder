import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/local/local_color_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/services/database/app_database.dart' as local_db;

@AutoMappr([
  MapType<BirdColor, local_db.BirdColor>(),
  MapType<local_db.BirdColor, BirdColor>(),
])
class LocalColorMapper extends $LocalColorMapper {}
