import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/local/local_cage_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/services/database/app_database.dart' as local_db;

@AutoMappr([
  MapType<Cage, local_db.Cage>(),
  MapType<local_db.Cage, Cage>(),
])
class LocalCageMapper extends $LocalCageMapper {}
