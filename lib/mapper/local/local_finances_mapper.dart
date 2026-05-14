import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/local/local_finances_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/services/database/app_database.dart' as local_db;

@AutoMappr([
  MapType<Finance, local_db.Finance>(
    fields: [
      Field('category', custom: LocalFinanceMapper.mapCategory),
      Field('bird', from: 'birdId'),
    ],
  ),
  MapType<local_db.Finance, Finance>(
    fields: [
      Field('categoryId', custom: LocalFinanceMapper.mapCategoryFromName),
      Field('birdId', from: 'bird'),
    ],
  ),
])
class LocalFinanceMapper extends $LocalFinanceMapper {
  static String mapCategory(Finance b) => b.categoryId;
  static String mapCategoryFromName(local_db.Finance b) => b.category;
}
