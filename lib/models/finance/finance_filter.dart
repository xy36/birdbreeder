import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/finance/finance_category_kind.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_filter.freezed.dart';

enum FinanceSort {
  dateDesc,
  dateAsc,
  amountDesc,
  amountAsc;

  String getDisplayName(BuildContext context) {
    switch (this) {
      case FinanceSort.dateDesc:
        return context.tr.finances.sorting.date_desc;
      case FinanceSort.dateAsc:
        return context.tr.finances.sorting.date_asc;
      case FinanceSort.amountDesc:
        return context.tr.finances.sorting.amount_desc;
      case FinanceSort.amountAsc:
        return context.tr.finances.sorting.amount_asc;
    }
  }
}

@freezed
abstract class FinanceFilter with _$FinanceFilter {
  const factory FinanceFilter({
    @Default([]) List<String> categoryIds,
    @Default([]) List<FinanceCategoryKind> kinds,
    @Default([]) List<String> birdIds,
    DateTime? fromDate,
    DateTime? toDate,
    double? minAmount,
    double? maxAmount,
    @Default(FinanceSort.dateDesc) FinanceSort sort,
  }) = _FinanceFilter;
}
