import 'package:freezed_annotation/freezed_annotation.dart';

part 'species_filter_state.freezed.dart';

enum SpeciesSortField { name, latName, created, stock }

@freezed
abstract class SpeciesFilterState with _$SpeciesFilterState {
  const factory SpeciesFilterState({
    @Default('') String query,
    @Default(SpeciesSortField.name) SpeciesSortField sortField,
    @Default(true) bool sortAsc,

    /// Narrows the list to protected species — the subset a breeder has
    /// reporting duties for.
    @Default(false) bool endangeredOnly,
  }) = _SpeciesFilterState;
}
