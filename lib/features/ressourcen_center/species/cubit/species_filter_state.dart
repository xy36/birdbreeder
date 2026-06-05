import 'package:freezed_annotation/freezed_annotation.dart';

part 'species_filter_state.freezed.dart';

enum SpeciesSortField { name, latName, created }

@freezed
abstract class SpeciesFilterState with _$SpeciesFilterState {
  const factory SpeciesFilterState({
    @Default('') String query,
    @Default(SpeciesSortField.name) SpeciesSortField sortField,
    @Default(true) bool sortAsc,
  }) = _SpeciesFilterState;
}
