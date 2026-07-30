import 'dart:convert';

import 'package:birdbreeder/features/bird_documents/data/bird_pedigree_pdf.dart';
import 'package:birdbreeder/features/bird_documents/domain/bird_document_data.dart';
import 'package:birdbreeder/features/export/data/pdf_fonts.dart';
import 'package:birdbreeder/features/export/domain/export_context.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:flutter_test/flutter_test.dart';

PedigreeSlot _slot(int index) => (
      ringNumber: 'RING-$index',
      speciesName: 'Wellensittich',
      colorName: 'Blau',
      sexLabel: index.isEven ? 'Henne' : 'Hahn',
      bornAt: '01.03.2024',
      breederName: index < 3 ? 'Max Mustermann' : null,
    );

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final translations = AppLocale.de.buildSync();

  Future<List<int>> build(
    List<PedigreeSlot?> slots, {
    ({String name, String? number})? breeder,
  }) async =>
      BirdPedigreePdf.build(
        slots: slots,
        exportContext: ExportContext(
          listTitle: 'Abstammungsnachweis',
          rowCount: 1,
          generatedAt: DateTime(2026, 7, 30),
        ),
        t: translations,
        fonts: await PdfFonts.load(),
        breeder: breeder,
      );

  test('produces a PDF with every slot filled', () async {
    final bytes = await build(
      [for (var i = 0; i < BirdPedigreePdf.slotCount; i++) _slot(i)],
      breeder: (name: 'Max Mustermann', number: 'Z-42'),
    );

    expect(bytes.length, greaterThan(1000));
    expect(latin1.decode(bytes.take(4).toList()), '%PDF');
  });

  test('renders unknown boxes when every ancestor is missing', () async {
    final bytes = await build([
      _slot(0),
      for (var i = 1; i < BirdPedigreePdf.slotCount; i++) null,
    ]);

    expect(bytes.length, greaterThan(1000));
  });

  test('survives a missing breeder block', () async {
    expect(
      build([for (var i = 0; i < BirdPedigreePdf.slotCount; i++) _slot(i)]),
      completes,
    );
  });

  test('renders characters outside Latin-1 instead of throwing', () async {
    final slots = [
      for (var i = 0; i < BirdPedigreePdf.slotCount; i++)
        (
          ringNumber: '№-$i',
          speciesName: 'Größenwahn — „Art“',
          colorName: 'Blau 🐦',
          sexLabel: '♂ Hahn',
          bornAt: '01.03.2024',
          breederName: 'Пётр',
        ),
    ];

    expect(build(slots), completes);
  });
}
