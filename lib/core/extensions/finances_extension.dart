import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/finances_categories_extension.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird_breeder_resources.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

extension FinancesListExtension on List<Finance> {
  Finance? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}

extension FinancesExtension on Finance {
  BirdBreederResources Function() get _birdBreederResources =>
      () => s1.get<BirdBreederCubit>().state.birdBreederResources;

  FinanceCategory? get categoryResolved =>
      _birdBreederResources().financesCategories.findById(categoryId);

  Bird? get birdResolved =>
      birdId != null ? _birdBreederResources().birds.findById(birdId!) : null;
}
