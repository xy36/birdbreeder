import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/core/utils/user_helper.dart';
import 'package:birdbreeder/features/breedings/data/dtos/brood_dto.dart';
import 'package:birdbreeder/features/breedings/domain/mapper/brood_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';

@AutoMappr([
  MapType<Brood, BroodDto>(
    fields: [
      Field('user', custom: UserHelper.insertUser),
    ],
  ),
])
class BroodMapper extends $BroodMapper {}
