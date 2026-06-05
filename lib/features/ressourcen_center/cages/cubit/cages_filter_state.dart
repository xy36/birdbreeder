import 'package:freezed_annotation/freezed_annotation.dart';

part 'cages_filter_state.freezed.dart';

enum CageTypeFilter { all, aviary, breedingBox, quarantine, empty }

enum CageSortField { name, created, capacity }

@freezed
abstract class CagesFilterState with _$CagesFilterState {
  const factory CagesFilterState({
    @Default(CageTypeFilter.all) CageTypeFilter typeFilter,
    @Default('') String query,
    @Default(CageSortField.name) CageSortField sortField,
    @Default(true) bool sortAsc,
  }) = _CagesFilterState;
}
