import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/finances_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/finance/dtos/finance_dto.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';

@AutoMappr([
  MapType<Finance, FinanceDto>(),
  MapType<FinanceDto, Finance>(),
])
class FinancesMapper extends $FinancesMapper {}
