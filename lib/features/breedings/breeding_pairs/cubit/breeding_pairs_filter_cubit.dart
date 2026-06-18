import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/models/breeding/breeding_pair_filter.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Holds the species/colour filter for the breeding pairs overview.
///
/// Mirrors `BirdsFilterCubit`. `filterPairsWith` enables live count previews in
/// the dimension sheet without touching the cubit state.
class BreedingPairsFilterCubit extends Cubit<BreedingPairFilter> {
  BreedingPairsFilterCubit() : super(const BreedingPairFilter());

  /// The baseline (empty) filter. Used to render the reset chip only when the
  /// user has diverged from it.
  BreedingPairFilter get defaultFilter => const BreedingPairFilter();

  void applyFilter(BreedingPairFilter filter) => emit(filter);
  void resetFilter() => emit(defaultFilter);

  List<BreedingPair> filterPairs(List<BreedingPair> pairs) =>
      filterPairsWith(state, pairs);

  /// Filters [pairs] against [f]. A pair matches when **either** parent's
  /// species/colour is in the respective selection.
  List<BreedingPair> filterPairsWith(
    BreedingPairFilter f,
    List<BreedingPair> pairs,
  ) {
    final speciesSet = f.speciesIds.toSet();
    final colorSet = f.colorIds.toSet();
    if (speciesSet.isEmpty && colorSet.isEmpty) return pairs;

    return pairs.where((p) {
      final father = p.fatherResolved;
      final mother = p.motherResolved;

      if (speciesSet.isNotEmpty &&
          !speciesSet.contains(father?.speciesId) &&
          !speciesSet.contains(mother?.speciesId)) {
        return false;
      }
      if (colorSet.isNotEmpty &&
          !colorSet.contains(father?.colorId) &&
          !colorSet.contains(mother?.colorId)) {
        return false;
      }
      return true;
    }).toList();
  }
}
