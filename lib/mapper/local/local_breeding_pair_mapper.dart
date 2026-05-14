import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/local/local_breeding_pair_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair_status.dart';
import 'package:birdbreeder/services/database/app_database.dart' as local_db;

@AutoMappr([
  MapType<BreedingPair, local_db.BreedingPair>(
    fields: [
      Field('father', custom: LocalBreedingPairMapper.mapFather),
      Field('mother', custom: LocalBreedingPairMapper.mapMother),
      Field('status', custom: LocalBreedingPairMapper.mapStatus),
      Field('cage', from: 'cageId'),
    ],
  ),
  MapType<local_db.BreedingPair, BreedingPair>(
    fields: [
      Field('fatherId', custom: LocalBreedingPairMapper.mapSexFromName),
      Field('motherId', custom: LocalBreedingPairMapper.mapSexFromMotherName),
      Field('status', custom: LocalBreedingPairMapper.mapStatusFromName),
      Field('cageId', from: 'cage'),
    ],
  ),
])
class LocalBreedingPairMapper extends $LocalBreedingPairMapper {
  static String mapFather(BreedingPair b) => b.fatherId;
  static String mapSexFromName(local_db.BreedingPair b) => b.father;

  static String mapMother(BreedingPair b) => b.motherId;
  static String mapSexFromMotherName(local_db.BreedingPair b) => b.mother;

  static String mapStatus(BreedingPair b) => b.status.name;
  static BreedingPairStatus mapStatusFromName(local_db.BreedingPair b) =>
      BreedingPairStatus.values.firstWhere((s) => s.name == b.status);
}
