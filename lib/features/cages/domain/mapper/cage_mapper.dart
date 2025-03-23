import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/core/utils/user_helper.dart';
import 'package:birdbreeder/features/cages/data/dtos/cage_dto.dart';
import 'package:birdbreeder/features/cages/domain/mapper/cage_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';

@AutoMappr([
  MapType<Cage, CageDto>(
    fields: [
      Field('user', custom: UserHelper.insertUser),
    ],
  ),
])
class CageMapper extends $CageMapper {}
