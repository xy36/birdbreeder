import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/generic_search_cubit.dart';

class FinancesSearchCubit extends GenericSearchCubit<Finance> {
  FinancesSearchCubit()
      : super((item, query) {
          final ring = (item.title).toLowerCase();
          final notes = (item.notes ?? '').toLowerCase();

          return ring.contains(query) || notes.contains(query);
        });
}
