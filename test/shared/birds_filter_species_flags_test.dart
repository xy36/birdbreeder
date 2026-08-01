import 'package:birdbreeder/features/birds/presentation/birds_overview/cubit/birds_filter_cubit.dart';
import 'package:birdbreeder/models/bird/bird_filter.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:flutter_test/flutter_test.dart';

/// The species flags live on the species, not on the bird, so the filter has
/// to resolve them. These tests inject the resolver instead of relying on
/// dependency injection.
final _protected = Species(
  id: 'protected',
  name: 'Graupapagei',
  latName: 'Psittacus erithacus',
  endangered: true,
  reportable: true,
);

final _reportableOnly = Species(
  id: 'reportable',
  name: 'Halsbandsittich',
  latName: 'Psittacula krameri',
  reportable: true,
);

final _plain = Species(
  id: 'plain',
  name: 'Wellensittich',
  latName: 'Melopsittacus undulatus',
);

const _birdProtected = Bird(id: 'b1', speciesId: 'protected');
const _birdReportable = Bird(id: 'b2', speciesId: 'reportable');
const _birdPlain = Bird(id: 'b3', speciesId: 'plain');
const _birdNoSpecies = Bird(id: 'b4');

const List<Bird> _all = [
  _birdProtected,
  _birdReportable,
  _birdPlain,
  _birdNoSpecies,
];

Species? _resolve(Bird bird) => switch (bird.speciesId) {
      'protected' => _protected,
      'reportable' => _reportableOnly,
      'plain' => _plain,
      _ => null,
    };

void main() {
  late BirdsFilterCubit cubit;

  setUp(() => cubit = BirdsFilterCubit(resolveSpecies: _resolve));
  tearDown(() => cubit.close());

  List<String> idsOf(List<Bird> birds) => birds.map((b) => b.id).toList();

  test('without the flags every bird passes', () {
    expect(
      idsOf(cubit.filterBirdsWith(const BirdFilter(), _all)),
      containsAll(['b1', 'b2', 'b3', 'b4']),
    );
  });

  test('endangeredOnly keeps birds of protected species', () {
    final result = cubit.filterBirdsWith(
      const BirdFilter(endangeredOnly: true),
      _all,
    );

    expect(idsOf(result), ['b1']);
  });

  test('reportableOnly keeps birds of species that must be reported', () {
    final result = cubit.filterBirdsWith(
      const BirdFilter(reportableOnly: true),
      _all,
    );

    expect(idsOf(result), containsAll(['b1', 'b2']));
    expect(idsOf(result), isNot(contains('b3')));
  });

  test('both flags together require both properties', () {
    final result = cubit.filterBirdsWith(
      const BirdFilter(endangeredOnly: true, reportableOnly: true),
      _all,
    );

    expect(idsOf(result), ['b1']);
  });

  test('a bird without a species matches neither flag', () {
    for (final filter in const [
      BirdFilter(endangeredOnly: true),
      BirdFilter(reportableOnly: true),
    ]) {
      expect(idsOf(cubit.filterBirdsWith(filter, _all)), isNot(contains('b4')));
    }
  });

  test('the flags combine with the other dimensions', () {
    final result = cubit.filterBirdsWith(
      const BirdFilter(reportableOnly: true, speciesIds: ['reportable']),
      _all,
    );

    expect(idsOf(result), ['b2']);
  });
}
