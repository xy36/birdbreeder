import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/finances_categories.dart';

extension FinancesCategoriesListExtension on List<FinancesCategories> {
  FinancesCategories? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}
