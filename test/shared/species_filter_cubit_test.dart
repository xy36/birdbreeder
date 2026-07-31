import 'package:birdbreeder/features/ressourcen_center/species/cubit/species_filter_cubit.dart';
import 'package:birdbreeder/features/ressourcen_center/species/cubit/species_filter_state.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:flutter_test/flutter_test.dart';

Species _species(
  String id,
  String name, {
  String? latName,
  bool endangered = false,
}) =>
    Species(
      id: id,
      name: name,
      latName: latName,
      endangered: endangered,
    );

final List<Species> _all = [
  _species('1', 'Wellensittich', latName: 'Melopsittacus undulatus'),
  _species(
    '2',
    'Graupapagei',
    latName: 'Psittacus erithacus',
    endangered: true,
  ),
  _species('3', 'Kanarienvogel', latName: 'Serinus canaria'),
];

const _stock = {'1': 12, '2': 2, '3': 7};

void main() {
  late SpeciesFilterCubit cubit;

  setUp(() => cubit = SpeciesFilterCubit());
  tearDown(() => cubit.close());

  List<String> namesOf(List<Species> list) =>
      list.map((s) => s.name ?? '').toList();

  test('sorts by name ascending by default', () {
    expect(
      namesOf(cubit.filterSpecies(_all)),
      ['Graupapagei', 'Kanarienvogel', 'Wellensittich'],
    );
  });

  test('the query matches the scientific name too', () {
    cubit.setQuery('erithacus');

    expect(namesOf(cubit.filterSpecies(_all)), ['Graupapagei']);
  });

  test('the query matches anywhere in the name, not just the start', () {
    // "psittacus" also sits inside "Melopsittacus".
    cubit.setQuery('psittacus');

    expect(
      namesOf(cubit.filterSpecies(_all)),
      ['Graupapagei', 'Wellensittich'],
    );
  });

  test('endangeredOnly narrows the list to protected species', () {
    cubit.setEndangeredOnly(value: true);

    expect(namesOf(cubit.filterSpecies(_all)), ['Graupapagei']);
  });

  test('endangeredOnly combines with the query', () {
    cubit
      ..setEndangeredOnly(value: true)
      ..setQuery('kanarie');

    expect(cubit.filterSpecies(_all), isEmpty);
  });

  test('sorts by stock in both directions', () {
    cubit.setSort(SpeciesSortField.stock, true);
    expect(
      namesOf(cubit.filterSpecies(_all, stockBySpecies: _stock)),
      ['Graupapagei', 'Kanarienvogel', 'Wellensittich'],
    );

    cubit.setSort(SpeciesSortField.stock, false);
    expect(
      namesOf(cubit.filterSpecies(_all, stockBySpecies: _stock)),
      ['Wellensittich', 'Kanarienvogel', 'Graupapagei'],
    );
  });

  test('species without a stock entry count as zero', () {
    cubit.setSort(SpeciesSortField.stock, true);

    expect(
      namesOf(cubit.filterSpecies(_all, stockBySpecies: const {'1': 5})).first,
      // Both unknowns tie at zero and fall back to the name.
      'Graupapagei',
    );
  });

  test('equal stock falls back to the name for a stable order', () {
    cubit.setSort(SpeciesSortField.stock, true);

    expect(
      namesOf(
        cubit.filterSpecies(
          _all,
          stockBySpecies: const {'1': 3, '2': 3, '3': 3},
        ),
      ),
      ['Graupapagei', 'Kanarienvogel', 'Wellensittich'],
    );
  });

  test('filtering leaves the source list untouched', () {
    cubit
      ..setSort(SpeciesSortField.stock, false)
      ..filterSpecies(_all, stockBySpecies: _stock);

    expect(namesOf(_all).first, 'Wellensittich');
  });

  test('reset clears query and endangered filter', () {
    cubit
      ..setQuery('graupapagei')
      ..setEndangeredOnly(value: true)
      ..reset();

    expect(cubit.state.query, isEmpty);
    expect(cubit.state.endangeredOnly, isFalse);
    expect(cubit.filterSpecies(_all), hasLength(3));
  });
}
