import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/finances_categories_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/finance/dtos/finance_category_dto.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';

@AutoMappr([
  MapType<FinanceCategory, FinanceCategoryDto>(),
  MapType<FinanceCategoryDto, FinanceCategory>(),
])
class FinancesCategoriesMapper extends $FinancesCategoriesMapper {}
