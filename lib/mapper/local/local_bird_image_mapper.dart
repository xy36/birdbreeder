import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/local/local_bird_image_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/bird_image/entity/bird_image.dart';
import 'package:birdbreeder/services/database/app_database.dart' as local_db;

@AutoMappr([
  MapType<BirdImage, local_db.BirdImage>(
    fields: [
      Field('bird', custom: LocalBirdImageMapper.mapBirdId),
    ],
  ),
  MapType<local_db.BirdImage, BirdImage>(
    fields: [
      Field('birdId', custom: LocalBirdImageMapper.mapBirdFromName),
    ],
  ),
])
class LocalBirdImageMapper extends $LocalBirdImageMapper {
  static String mapBirdId(BirdImage i) => i.birdId;
  static String mapBirdFromName(local_db.BirdImage i) => i.bird;
}
