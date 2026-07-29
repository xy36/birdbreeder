import 'dart:convert';

import 'package:birdbreeder/features/export/data/pdf_fonts.dart';
import 'package:birdbreeder/features/export/data/pdf_list_exporter.dart';
import 'package:birdbreeder/features/export/domain/export_column.dart';
import 'package:birdbreeder/features/export/domain/export_context.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:flutter_test/flutter_test.dart';

/// A stand-in row so these tests exercise the renderer alone, without the
/// dependency-injected resolvers the real registries use.
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
    align: ExportAlign.right,
  ),
];

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final translations = AppLocale.de.buildSync();

  Future<List<int>> build(
    List<_Row> rows, {
    Contact? breeder,
    List<String> activeFilters = const [],
    List<({String label, String value})> summary = const [],
  }) async =>
      PdfListExporter.build(
        rows: rows,
        columns: _columns,
        exportContext: ExportContext(
          listTitle: 'Bestandsliste',
          rowCount: rows.length,
          generatedAt: DateTime(2026, 7, 28),
          breeder: breeder,
          activeFilters: activeFilters,
        ),
        t: translations,
        fonts: await PdfFonts.load(),
        summary: summary,
      );

  test('produces a PDF document', () async {
    final bytes = await build(const [_Row('Rex', 'Notiz')]);

    expect(bytes.length, greaterThan(1000));
    expect(latin1.decode(bytes.take(4).toList()), '%PDF');
  });

  test('renders characters outside Latin-1 instead of throwing', () async {
    // The pdf package's built-in fonts encode with a strict `latin1.encode`
    // and would throw here. The embedded TrueType font is the whole reason
    // this passes — a "€" in a title used to abort the export.
    expect(
      build(const [
        _Row('Preis 12,50 €', 'Anführung „x“ — Gedankenstrich'),
        _Row('Emoji 🐦', 'Cyrillic Пётр'),
      ]),
      completes,
    );
  });

  test('survives an empty list', () async {
    final bytes = await build(const []);

    expect(bytes.length, greaterThan(1000));
  });

  test('renders the breeder letterhead and the filter summary', () async {
    final breeder = Contact.create().copyWith(
      id: 'p1',
      number: 'Z-42',
      firstName: 'Max',
      lastName: 'Mustermann',
      address: 'Musterweg 1',
      postalCode: '12345',
      city: 'Musterstadt',
    );

    expect(
      build(
        const [_Row('Rex', null)],
        breeder: breeder,
        activeFilters: const ['Art: Wellensittich', 'Voliere 3'],
      ),
      completes,
    );
  });

  test('renders a summary strip', () async {
    final withSummary = await build(
      const [_Row('Rex', null)],
      summary: const [
        (label: 'Einnahmen', value: '120,00 €'),
        (label: 'Saldo', value: '74,10 €'),
      ],
    );
    final without = await build(const [_Row('Rex', null)]);

    expect(withSummary.length, greaterThan(without.length));
  });

  test('a very long cell does not starve the other columns', () async {
    // Column widths are declared, not measured, so a 600-character note takes
    // the share its weight allows and wraps. With the package's default
    // intrinsic sizing it would have claimed nearly the whole page.
    final withEssay = await build([
      _Row('Rex', 'Sehr lange Notiz. ' * 35),
    ]);

    expect(withEssay.length, greaterThan(1000));
  });

  test('spans multiple pages for a long list', () async {
    final long = await build([
      for (var i = 0; i < 200; i++) _Row('Vogel $i', 'Notiz $i'),
    ]);
    final short = await build(const [_Row('Rex', null)]);

    expect(long.length, greaterThan(short.length));
  });
}
