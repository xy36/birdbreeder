import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/searchable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef Query = String;
typedef ContactSearchCubit = GenericSearchCubit<Contact>;
typedef BirdSearchCubit = GenericSearchCubit<Bird>;
typedef BreedingPairSearchCubit = GenericSearchCubit<BreedingPair>;
typedef FinanceSearchCubit = GenericSearchCubit<Finance>;

class GenericSearchCubit<T extends Searchable> extends Cubit<Query> {
  GenericSearchCubit() : super('');

  List<T> _allItems = [];

  Query get query => state;

  /// Resets the search state.
  void reset() => emit('');

  /// Sets the search query.
  void setSearch(String? search) => emit(search ?? '');

  /// Sets the items to search through.
  void setItems(List<T> items) {
    _allItems = items;
    emit(state);
  }

  /// Extract search tokens.
  /// "peter müller" -> ['peter müller']
  /// peter müller -> ['peter', 'müller']
  /// "peter müller" rechnung -> ['peter müller', 'rechnung']
  List<String> _tokenize(String query) {
    final regex = RegExp(r'"([^"]+)"|(\S+)');

    return regex
        .allMatches(query)
        .map((m) => (m.group(1) ?? m.group(2))!.toLowerCase())
        .toList();
  }

  /// Performs the search and returns the matching items.
  List<T> search() {
    final q = query.trim().toLowerCase();
    if (q.isEmpty) return _allItems;

    final tokens = _tokenize(q);

    return _allItems.where((item) {
      final index = item.searchIndex;

      // All tokens must match
      return tokens.every(index.contains);
    }).toList();
  }

  /// The list of items that match the search query.
  List<T> get searchedItems => search();
}
