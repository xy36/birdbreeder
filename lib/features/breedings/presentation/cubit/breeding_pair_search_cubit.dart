import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/generic_search_cubit.dart';

class BreedingPairSearchCubit extends GenericSearchCubit<BreedingPair> {
  BreedingPairSearchCubit()
      : super((item, query) {
          final fatherRingnumber =
              (item.fatherResolved?.ringNumber ?? '').toLowerCase();
          final motherRingnumber =
              (item.motherResolved?.ringNumber ?? '').toLowerCase();

          return fatherRingnumber.contains(query) ||
              motherRingnumber.contains(query);
        });
}
