import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/local/local_brood_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/services/database/app_database.dart' as local_db;

@AutoMappr([
  MapType<Brood, local_db.Brood>(),
  MapType<local_db.Brood, Brood>(),
])
class LocalBroodMapper extends $LocalBroodMapper {}
