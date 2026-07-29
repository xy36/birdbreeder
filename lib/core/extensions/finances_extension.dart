import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/finances_categories_extension.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird_breeder_resources.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/finance/finance_category_kind.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

extension FinancesListExtension on List<Finance> {
  Finance? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}

/// Sums a set of bookings by the kind of their category.
///
/// The single source for every balance the app shows — the overview header,
/// the summary bar and the PDF export must never disagree about what a list of
/// bookings adds up to. Entries whose category is missing count for nothing
/// rather than silently landing on one side.
extension FinanceTotals on List<Finance> {
  double get income => _sumOf(FinanceCategoryKind.income);

  double get expense => _sumOf(FinanceCategoryKind.expense);

  /// Income minus expense; negative when the list is in the red.
  double get net => income - expense;

  double _sumOf(FinanceCategoryKind kind) => fold<double>(
        0,
        (sum, finance) =>
            finance.categoryResolved?.kind == kind ? sum + finance.amount : sum,
      );
}

extension FinancesExtension on Finance {
  BirdBreederResources Function() get _birdBreederResources =>
      () => s1.get<BirdBreederCubit>().state.birdBreederResources;

  /// Returns the bird resolved from the state
  FinanceCategory? get categoryResolved =>
      _birdBreederResources().financesCategories.findById(categoryId);

  /// Returns the bird resolved from the state
  Bird? get birdResolved =>
      birdId != null ? _birdBreederResources().birds.findById(birdId!) : null;
}
