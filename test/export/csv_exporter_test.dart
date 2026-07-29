import 'package:birdbreeder/features/export/data/csv_exporter.dart';
import 'package:birdbreeder/features/export/domain/export_column.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:csv/csv.dart';
import 'package:flutter_test/flutter_test.dart';

/// A stand-in row so these tests exercise the writer alone, without the
/// dependency-injected resolvers the real bird columns use.
class _Row {
  const _Row(this.name, this.note);

  final String name;
  final String? note;
}

final _columns = <ExportColumn<_Row>>[
  ExportColumn(
    id: 'name',
    label: (_) => 'Name',
    value: (row, _) => row.name,
  ),
  ExportColumn(
    id: 'notes',
    label: (_) => 'Notizen',
    value: (row, _) => row.note,
  ),
];

String _build(List<_Row> rows) => CsvExporter.build(
      rows: rows,
      columns: _columns,
      t: AppLocale.de.buildSync(),
    );

void main() {
  test('starts with a byte order mark so Excel detects UTF-8', () {
    expect(_build(const []).codeUnitAt(0), 0xFEFF);
  });

  test('writes column ids as the header line', () {
    final lines = _build(const []).split('\r\n');

    expect(lines.first, '﻿name;notes');
  });

  test('renders one line per row and blanks for null values', () {
    final csv = _build(const [_Row('Rex', null)]);

    expect(csv.split('\r\n')[1], 'Rex;');
  });

  test('quotes values containing the field delimiter or a quote', () {
    final csv = _build(const [_Row('a;b', 'sagt "hallo"')]);
    final parsed = const CsvToListConverter(
      fieldDelimiter: ';',
      shouldParseNumbers: false,
    ).convert(csv);

    expect(parsed[1], ['a;b', 'sagt "hallo"']);
  });

  test('survives the importer parser, which splits on bare newlines', () {
    // `CsvBirdImportCubit` converts with `eol: '\n'`, leaving a trailing \r on
    // the last field of every line. Header and value handling must tolerate it.
    final csv = _build(const [_Row('Rex', 'Notiz')]);
    final parsed = const CsvToListConverter(
      fieldDelimiter: ';',
      eol: '\n',
      shouldParseNumbers: false,
    ).convert(csv);

    expect(parsed.first.first.toString().trim(), 'name');
    expect(parsed[1].last.toString().trim(), 'Notiz');
  });
}
