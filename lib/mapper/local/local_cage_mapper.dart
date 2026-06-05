import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/local/local_cage_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/services/database/app_database.dart' as local_db;

@AutoMappr([
  MapType<Cage, local_db.Cage>(
    fields: [
      Field('type', custom: LocalCageMapper.typeToString),
    ],
  ),
  MapType<local_db.Cage, Cage>(
    fields: [
      Field('type', custom: LocalCageMapper.typeFromString),
    ],
  ),
])
class LocalCageMapper extends $LocalCageMapper {
  static String? typeToString(Cage c) => c.type?.name;

  static CageType? typeFromString(local_db.Cage c) {
    final raw = c.type;
    if (raw == null) return null;
    for (final t in CageType.values) {
      if (t.name == raw) return t;
    }
    return null;
  }
}
