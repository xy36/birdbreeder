import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/features/birds/data/dtos/finances_dto.dart';
import 'package:birdbreeder/features/birds/domain/mapper/finances_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/birds/domain/models/finances.dart';

@AutoMappr([
  MapType<Finances, FinancesDto>(),
  MapType<FinancesDto, Finances>(),
])
class FinancesMapper extends $FinancesMapper {}
