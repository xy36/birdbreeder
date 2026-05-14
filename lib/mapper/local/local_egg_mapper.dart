import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/local/local_egg_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/services/database/app_database.dart' as local_db;

@AutoMappr([
  MapType<Egg, local_db.Egg>(
    fields: [
      Field('brood', custom: LocalEggMapper.mapBroodId),
      Field('status', custom: LocalEggMapper.mapStatus),
      Field('color', from: 'colorId'),
      Field('cage', from: 'cageId'),
      Field('species', from: 'speciesId'),
    ],
  ),
  MapType<local_db.Egg, Egg>(
    fields: [
      Field('broodId', custom: LocalEggMapper.mapBroodFromName),
      Field('status', custom: LocalEggMapper.mapStatusFromName),
      Field('colorId', from: 'color'),
      Field('cageId', from: 'cage'),
      Field('speciesId', from: 'species'),
    ],
  ),
])
class LocalEggMapper extends $LocalEggMapper {
  static String mapBroodId(Egg e) => e.broodId;
  static String mapBroodFromName(local_db.Egg e) => e.brood;

  static String mapStatus(Egg b) => b.status.name;
  static EggStatus mapStatusFromName(local_db.Egg b) =>
      EggStatus.values.firstWhere((s) => s.name == b.status);
}
