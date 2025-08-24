import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/features/breedings/data/dtos/breeding_pair_dto.dart';
import 'package:birdbreeder/features/breedings/domain/mapper/breeding_pair_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';

@AutoMappr([
  MapType<BreedingPair, BreedingPairDto>(),
  MapType<BreedingPairDto, BreedingPair>(),
])
class BreedingPairMapper extends $BreedingPairMapper {}
