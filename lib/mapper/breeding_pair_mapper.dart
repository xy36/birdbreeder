import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/models/breeding/dtos/breeding_pair_dto.dart';
import 'package:birdbreeder/mapper/breeding_pair_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';

@AutoMappr([
  MapType<BreedingPair, BreedingPairDto>(),
  MapType<BreedingPairDto, BreedingPair>(),
])
class BreedingPairMapper extends $BreedingPairMapper {}
