import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/finances_categories_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/finances.dart';
import 'package:birdbreeder/features/birds/domain/models/finances_categories.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/models/bird_breeder_resources.dart';

extension FinancesListExtension on List<Finances> {
  Finances? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}

extension FinancesExtension on Finances {
  BirdBreederResources Function() get _birdBreederResources =>
      () => s1.get<BirdBreederCubit>().state.birdBreederResources;

  FinancesCategories? get categoryResolved =>
      _birdBreederResources().financesCategories.findById(financesCategoriesId);

  Bird? get fatherResolved =>
      birdId == null ? null : _birdBreederResources().birds.findById(birdId!);
}
