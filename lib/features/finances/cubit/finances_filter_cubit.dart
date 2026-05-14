import 'package:birdbreeder/core/extensions/finances_extension.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/finance_filter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinancesFilterCubit extends Cubit<FinanceFilter> {
  FinancesFilterCubit() : super(const FinanceFilter());

  void applyFilter(FinanceFilter filter) => emit(filter);

  void reset() => emit(const FinanceFilter());

  /// Sets date range to span the given year, or clears it if year is null.
  void selectYear(int? year) {
    if (year == null) {
      emit(state.copyWith(fromDate: null, toDate: null));
      return;
    }
    emit(
      state.copyWith(
        fromDate: DateTime(year),
        toDate: DateTime(year, 12, 31, 23, 59, 59),
      ),
    );
  }

  /// True when fromDate + toDate exactly span [year].
  bool isYearSelected(int year) {
    final from = state.fromDate;
    final to = state.toDate;
    if (from == null || to == null) return false;
    return from.year == year &&
        from.month == 1 &&
        from.day == 1 &&
        to.year == year &&
        to.month == 12 &&
        to.day == 31;
  }

  bool get hasAnyYearSelected =>
      state.fromDate != null || state.toDate != null;

  List<Finance> filterFinances(List<Finance> finances) {
    final f = state;

    final categorySet =
        f.categoryIds.isEmpty ? null : f.categoryIds.toSet();
    final kindSet = f.kinds.isEmpty ? null : f.kinds.toSet();
    final birdSet = f.birdIds.isEmpty ? null : f.birdIds.toSet();

    final filtered = finances.where((e) {
      if (categorySet != null && !categorySet.contains(e.categoryId)) {
        return false;
      }
      if (kindSet != null) {
        final kind = e.categoryResolved?.kind;
        if (kind == null || !kindSet.contains(kind)) return false;
      }
      if (birdSet != null) {
        if (e.birdId == null || !birdSet.contains(e.birdId)) return false;
      }
      final d = e.date ?? e.created;
      if (f.fromDate != null) {
        if (d == null || d.isBefore(f.fromDate!)) return false;
      }
      if (f.toDate != null) {
        if (d == null || d.isAfter(f.toDate!)) return false;
      }
      if (f.minAmount != null && e.amount < f.minAmount!) return false;
      if (f.maxAmount != null && e.amount > f.maxAmount!) return false;
      return true;
    }).toList();

    int dateCmp(Finance a, Finance b) {
      final ad = a.date ?? a.created ?? DateTime.fromMillisecondsSinceEpoch(0);
      final bd = b.date ?? b.created ?? DateTime.fromMillisecondsSinceEpoch(0);
      return ad.compareTo(bd);
    }

    switch (f.sort) {
      case FinanceSort.dateDesc:
        filtered.sort((a, b) => dateCmp(b, a));
      case FinanceSort.dateAsc:
        filtered.sort(dateCmp);
      case FinanceSort.amountDesc:
        filtered.sort((a, b) => b.amount.compareTo(a.amount));
      case FinanceSort.amountAsc:
        filtered.sort((a, b) => a.amount.compareTo(b.amount));
    }

    return filtered;
  }
}
