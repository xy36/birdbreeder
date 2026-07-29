import 'package:birdbreeder/features/export/domain/columns/breeding_pair_export_columns.dart';
import 'package:birdbreeder/features/export/domain/export_column.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair_status.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:flutter_test/flutter_test.dart';

import 'seeded_resources.dart';

void main() {
  final translations = AppLocale.de.buildSync();
  final species = Species(id: 's1', name: 'Wellensittich', latName: null);
  final cage = Cage(
    id: 'k1',
    name: 'Voliere 3',
    description: null,
    width: null,
    height: null,
    depth: null,
  );
  final father = Bird(
    id: 'v1',
    ringNumber: 'AB-001',
    sex: Sex.male,
    speciesId: species.id,
  );
  const mother = Bird(id: 'v2', ringNumber: 'AB-002', sex: Sex.female);
  final pair = BreedingPair(
    id: 'z1',
    start: DateTime(2026, 3),
    end: DateTime(2026, 6, 30),
    fatherId: father.id,
    motherId: mother.id,
    cageId: cage.id,
    status: BreedingPairStatus.finished,
    notes: null,
  );
  final brood = Brood(
    id: 'b1',
    start: DateTime(2026, 3),
    end: null,
    notes: null,
    cage: cage.id,
    breedingPair: pair.id,
  );

  // Four eggs down the funnel: all laid, three fertilized, two hatched, one
  // fledged.
  final eggs = [
    Egg(id: 'e1', broodId: brood.id, number: 1, laidAt: DateTime(2026, 3)),
    Egg(
      id: 'e2',
      broodId: brood.id,
      number: 2,
      laidAt: DateTime(2026, 3, 2),
      fertilizedAt: DateTime(2026, 3, 8),
    ),
    Egg(
      id: 'e3',
      broodId: brood.id,
      number: 3,
      laidAt: DateTime(2026, 3, 3),
      fertilizedAt: DateTime(2026, 3, 9),
      hatchedAt: DateTime(2026, 3, 20),
    ),
    Egg(
      id: 'e4',
      broodId: brood.id,
      number: 4,
      laidAt: DateTime(2026, 3, 4),
      fertilizedAt: DateTime(2026, 3, 10),
      hatchedAt: DateTime(2026, 3, 21),
      fledgedAt: DateTime(2026, 4, 15),
    ),
  ];

  String? valueOf(ExportColumn<BreedingPair> column) =>
      column.value(pair, translations);

  setUpAll(() {
    registerSeededResources(
      exportTestResources(
        birds: [father, mother],
        breedingPairs: [pair],
        broods: [brood],
        eggs: eggs,
        cages: [cage],
        species: [species],
      ),
    );
  });

  tearDownAll(s1.reset);

  test('resolves both parents and the cage', () {
    expect(valueOf(BreedingPairExportColumns.fatherRing), 'AB-001');
    expect(valueOf(BreedingPairExportColumns.motherRing), 'AB-002');
    expect(valueOf(BreedingPairExportColumns.cage), 'Voliere 3');
  });

  test('leaves the species blank for a parent that has none', () {
    expect(valueOf(BreedingPairExportColumns.fatherSpecies), 'Wellensittich');
    expect(valueOf(BreedingPairExportColumns.motherSpecies), isNull);
  });

  test('renders status and dates', () {
    expect(
      valueOf(BreedingPairExportColumns.status),
      translations.breeding_pairs.status.finished,
    );
    expect(valueOf(BreedingPairExportColumns.start), '01.03.2026');
    expect(valueOf(BreedingPairExportColumns.end), '30.06.2026');
  });

  test('counts the clutch funnel the way the pair cards do', () {
    expect(valueOf(BreedingPairExportColumns.broods), '1');
    expect(valueOf(BreedingPairExportColumns.laid), '4');
    expect(valueOf(BreedingPairExportColumns.fertilized), '3');
    expect(valueOf(BreedingPairExportColumns.hatched), '2');
    expect(valueOf(BreedingPairExportColumns.fledged), '1');
  });

  group('breedingPairExportSummary', () {
    test('totals the funnel and derives the hatch rate', () {
      final strip = breedingPairExportSummary([pair], translations);
      final values = {for (final entry in strip) entry.label: entry.value};

      expect(values[translations.export.summary.pairs], '1');
      expect(values[translations.export.columns.breeding_pair.laid], '4');
      expect(values[translations.export.columns.breeding_pair.hatched], '2');
      expect(values[translations.export.summary.hatch_rate], '50 %');
    });

    test('leaves the hatch rate blank when nothing was laid', () {
      final strip = breedingPairExportSummary([], translations);
      final rate = strip
          .firstWhere(
            (entry) => entry.label == translations.export.summary.hatch_rate,
          )
          .value;

      expect(rate, isEmpty);
    });
  });

  test('every preset column carries a label', () {
    for (final preset in BreedingPairExportPresets.all) {
      for (final column in preset.columns) {
        expect(column.label(translations), isNotEmpty);
      }
    }
  });
}
