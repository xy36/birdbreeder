import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/features/birds/data/dtos/finances_categories_dto.dart';
import 'package:birdbreeder/features/birds/domain/mapper/finances_categories_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/birds/domain/models/finances_categories.dart';

@AutoMappr([
  MapType<FinancesCategories, FinancesCategoriesDto>(),
  MapType<FinancesCategoriesDto, FinancesCategories>(),
])
class FinancesCategoriesMapper extends $FinancesCategoriesMapper {}
