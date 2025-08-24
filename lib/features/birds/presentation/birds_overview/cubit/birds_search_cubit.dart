import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/generic_search_cubit.dart';

class BirdSearchCubit extends GenericSearchCubit<Bird> {
  BirdSearchCubit()
      : super((item, query) {
          final ring = (item.ringNumber ?? '').toLowerCase();
          final species = (item.speciesResolved?.name ?? '').toLowerCase();
          final color = (item.colorResolved?.name ?? '').toLowerCase();
          final notes = (item.notes ?? '').toLowerCase();

          return ring.contains(query) ||
              species.contains(query) ||
              color.contains(query) ||
              notes.contains(query);
        });
}
