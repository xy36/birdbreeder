import 'package:birdbreeder/features/csv_import/models/csv_bird_row.dart';
import 'package:birdbreeder/features/export/data/csv_exporter.dart';
import 'package:birdbreeder/features/export/domain/columns/bird_export_columns.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:csv/csv.dart';
import 'package:flutter_test/flutter_test.dart';

import 'seeded_resources.dart';

/// Parses [csv] the way `CsvBirdImportCubit._parseCsv` does, so the assertions
/// speak about what the app's own import would actually see.
List<CsvBirdRow> importRows(String csv) {
  const converter = CsvToListConverter(
    fieldDelimiter: ';',
    eol: '\n',
    shouldParseNumbers: false,
  );
  final rows = converter.convert(csv);
  final headers =
      rows.first.map((h) => h.toString().toLowerCase().trim()).toList();

  return rows.skip(1).indexed.map((indexed) {
    final (index, row) = indexed;
    final map = <String, dynamic>{};
    for (var i = 0; i < headers.length && i < row.length; i++) {
      map[headers[i]] = row[i];
    }
    return CsvBirdRow.fromCsvMap(map, index + 1);
  }).toList();
}

void main() {
  final species = Species(id: 's1', name: 'Wellensittich', latName: null);
  final color = BirdColor(id: 'c1', name: 'Blau');
  final cage = Cage(
    id: 'k1',
    name: 'Voliere 3',
    description: null,
    width: null,
    height: null,
    depth: null,
  );
  final breeder = Contact.create().copyWith(
    id: 'p1',
    number: 'Z-42',
    firstName: 'Max',
    lastName: 'Mustermann',
  );
  const father = Bird(id: 'v1', ringNumber: 'AB-001', sex: Sex.male);
  const mother = Bird(id: 'v2', ringNumber: 'AB-002', sex: Sex.female);
  final chick = Bird(
    id: 'v3',
    ringNumber: '007',
    speciesId: species.id,
    colorId: color.id,
    cageId: cage.id,
    breederId: breeder.id,
    sex: Sex.female,
    bornAt: DateTime(2026, 3, 7),
    boughtAt: DateTime(2026, 4),
    boughtPrice: 1234.5,
    fatherId: father.id,
    motherId: mother.id,
    notes: 'Erste Zeile\nzweite Zeile; mit Semikolon',
  );

  late String csv;

  setUpAll(() {
    registerSeededResources(
      exportTestResources(
        birds: [father, mother, chick],
        cages: [cage],
        colors: [color],
        contacts: [breeder],
        species: [species],
      ),
    );
    csv = CsvExporter.build(
      rows: [chick],
      columns: BirdExportPresets.full.columns,
      t: AppLocale.de.buildSync(),
    );
  });

  tearDownAll(s1.reset);

  test('resolves ids to the names the breeder knows', () {
    final row = csv.split('\r\n')[1];

    expect(row, contains('Wellensittich'));
    expect(row, contains('Blau'));
    expect(row, contains('Voliere 3'));
  });

  test('re-imports as exactly one valid row', () {
    final rows = importRows(csv);

    expect(rows, hasLength(1));
    expect(rows.single.hasError, isFalse);
    expect(rows.single.isValid, isTrue);
  });

  test('carries identity, housing and lineage back through the importer', () {
    final row = importRows(csv).single;

    expect(row.ringNumber, '007');
    expect(row.speciesName, 'Wellensittich');
    expect(row.colorName, 'Blau');
    expect(row.cageName, 'Voliere 3');
    expect(row.sex, Sex.female);
    expect(row.fatherRingNumber, 'AB-001');
    expect(row.motherRingNumber, 'AB-002');
  });

  test('carries dates and prices back through the importer', () {
    final row = importRows(csv).single;

    expect(row.bornAt, DateTime(2026, 3, 7));
    expect(row.boughtAt, DateTime(2026, 4));
    expect(row.boughtPrice, 1234.5);
  });

  test('matches the breeder by contact number, not by name', () {
    final row = importRows(csv).single;

    expect(row.breederNumber, 'Z-42');
  });

  test('keeps notes on one line despite the embedded newline', () {
    final row = importRows(csv).single;

    expect(row.notes, 'Erste Zeile zweite Zeile; mit Semikolon');
  });
}
