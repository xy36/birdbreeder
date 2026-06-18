import 'package:freezed_annotation/freezed_annotation.dart';

part 'breeding_pair_filter.freezed.dart';

/// Filter for the breeding pairs overview.
///
/// A pair has no own species/colour; both are derived from its father/mother
/// birds. A pair matches a selection when **either** parent matches (see
/// `BreedingPairsFilterCubit.filterPairsWith`).
@freezed
abstract class BreedingPairFilter with _$BreedingPairFilter {
  const factory BreedingPairFilter({
    @Default([]) List<String> speciesIds,
    @Default([]) List<String> colorIds,
  }) = _BreedingPairFilter;
}
