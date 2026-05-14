import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/local/local_bird_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:birdbreeder/services/database/app_database.dart' as local_db;

@AutoMappr([
  MapType<Bird, local_db.Bird>(
    fields: [
      Field('sex', custom: LocalBirdMapper.mapSex),
      Field('saleStatus', custom: LocalBirdMapper.mapSaleStatus),
      Field('ringnumber', from: 'ringNumber'),
      Field('species', from: 'speciesId'),
      Field('color', from: 'colorId'),
      Field('father', from: 'fatherId'),
      Field('mother', from: 'motherId'),
      Field('cage', from: 'cageId'),
      Field('brood', from: 'broodId'),
      Field('boughtFrom', from: 'boughtFromId'),
      Field('soldTo', from: 'soldToId'),
      Field('owner', from: 'ownerId'),
      Field('breeder', from: 'breederId'),
    ],
  ),
  MapType<local_db.Bird, Bird>(
    fields: [
      Field('sex', custom: LocalBirdMapper.mapSexFromName),
      Field('saleStatus', custom: LocalBirdMapper.mapSaleStatusFromName),
      Field('ringNumber', from: 'ringnumber'),
      Field('speciesId', from: 'species'),
      Field('colorId', from: 'color'),
      Field('fatherId', from: 'father'),
      Field('motherId', from: 'mother'),
      Field('cageId', from: 'cage'),
      Field('broodId', from: 'brood'),
      Field('boughtFromId', from: 'boughtFrom'),
      Field('soldToId', from: 'soldTo'),
      Field('ownerId', from: 'owner'),
      Field('breederId', from: 'breeder'),
    ],
  ),
])
class LocalBirdMapper extends $LocalBirdMapper {
  static String mapSex(Bird bird) => bird.sex.name;
  static Sex mapSexFromName(local_db.Bird bird) =>
      Sex.values.firstWhere((s) => s.name == bird.sex);

  static String mapSaleStatus(Bird bird) => bird.saleStatus.name;

  static SaleStatus mapSaleStatusFromName(local_db.Bird bird) =>
      SaleStatus.values.firstWhere((s) => s.name == bird.saleStatus);
}
