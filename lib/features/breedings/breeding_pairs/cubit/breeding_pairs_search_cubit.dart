import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/generic_search_cubit.dart';

class BreedingPairsSearchCubit extends GenericSearchCubit<BreedingPair> {
  BreedingPairsSearchCubit()
      : super((item, query) {
          final ringFather =
              (item.fatherResolved?.ringNumber)?.toLowerCase() ?? '';
          final ringMother =
              (item.motherResolved?.ringNumber)?.toLowerCase() ?? '';
          final notes = (item.notes ?? '').toLowerCase();

          return ringFather.contains(query) ||
              ringMother.contains(query) ||
              notes.contains(query);
        });
}
