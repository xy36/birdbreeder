import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/core/utils/user_helper.dart';
import 'package:birdbreeder/features/birds/data/dtos/bird_dto.dart';
import 'package:birdbreeder/features/birds/domain/mapper/bird_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';

@AutoMappr([
  MapType<Bird, BirdDto>(
    fields: [
      //TODO: find way that the user is added in backend logic
      Field('user', custom: UserHelper.insertUser),
    ],
  ),
])
class BirdMapper extends $BirdMapper {}
