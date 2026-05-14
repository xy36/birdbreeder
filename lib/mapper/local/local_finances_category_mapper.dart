import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/local/local_finances_category_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/finance/finance_category_kind.dart';
import 'package:birdbreeder/services/database/app_database.dart' as local_db;

@AutoMappr([
  MapType<FinanceCategory, local_db.FinanceCategory>(
    fields: [
      Field('kind', custom: LocalFinancesCategoryMapper.mapKind),
    ],
  ),
  MapType<local_db.FinanceCategory, FinanceCategory>(
    fields: [
      Field('kind', custom: LocalFinancesCategoryMapper.mapKindFromName),
    ],
  ),
])
class LocalFinancesCategoryMapper extends $LocalFinancesCategoryMapper {
  static String mapKind(FinanceCategory category) => category.kind.name;
  static FinanceCategoryKind mapKindFromName(
    local_db.FinanceCategory category,
  ) =>
      FinanceCategoryKind.values.firstWhere((e) => e.name == category.kind);
}
