import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/features/birds/data/dtos/finance_dto.dart';
import 'package:birdbreeder/features/birds/domain/mapper/finances_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/birds/domain/models/finance.dart';

@AutoMappr([
  MapType<Finance, FinanceDto>(),
  MapType<FinanceDto, Finance>(),
])
class FinancesMapper extends $FinancesMapper {}
