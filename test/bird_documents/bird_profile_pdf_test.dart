import 'dart:convert';
import 'dart:typed_data';

import 'package:birdbreeder/features/bird_documents/data/bird_profile_pdf.dart';
import 'package:birdbreeder/features/bird_documents/domain/bird_document_data.dart';
import 'package:birdbreeder/features/export/data/pdf_fonts.dart';
import 'package:birdbreeder/features/export/domain/export_context.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:flutter_test/flutter_test.dart';

/// A 1x1 PNG so the photo path runs against real image bytes.
final Uint8List _pngBytes = base64Decode(
  'iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJ'
  'AAAADUlEQVR42mP8z8BQDwAEhQGAhKmMIQAAAABJRU5ErkJggg==',
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final translations = AppLocale.de.buildSync();

  Future<List<int>> build({
    List<DocSection> sections = const [],
    Uint8List? photoBytes,
    String? ringNumber,
    String? notes,
  }) async =>
      BirdProfilePdf.build(
        sections: sections,
        exportContext: ExportContext(
          listTitle: 'Steckbrief',
          rowCount: 1,
          generatedAt: DateTime(2026, 7, 30),
        ),
        t: translations,
        fonts: await PdfFonts.load(),
        photoBytes: photoBytes,
        ringNumber: ringNumber,
        notes: notes,
      );

  const fullSections = [
    (
      title: 'Allgemein',
      entries: [
        (label: 'Ringnummer', value: '23-DKB-104'),
        (label: 'Art', value: 'Wellensittich'),
        (label: 'Geschlecht', value: 'Hahn'),
      ],
    ),
    (
      title: 'Kauf & Verkauf',
      entries: [(label: 'Preis', value: '12,50 €')],
    ),
  ];

  test('produces a PDF document', () async {
    final bytes = await build(
      sections: fullSections,
      ringNumber: '23-DKB-104',
      notes: 'Eine Notiz.',
    );

    expect(bytes.length, greaterThan(1000));
    expect(latin1.decode(bytes.take(4).toList()), '%PDF');
  });

  test('renders the photo beside the first section', () async {
    final withPhoto = await build(
      sections: fullSections,
      photoBytes: _pngBytes,
    );
    final without = await build(sections: fullSections);

    expect(withPhoto.length, greaterThan(without.length));
  });

  test('survives a bird with no data at all', () async {
    final bytes = await build();

    expect(bytes.length, greaterThan(1000));
  });

  test('renders characters outside Latin-1 instead of throwing', () async {
    expect(
      build(
        sections: const [
          (
            title: 'Notizen — „Sonderzeichen“',
            entries: [(label: 'Preis', value: '1.234,50 €')],
          ),
        ],
        notes: 'Пример 🐦 mit Gedankenstrich — und €.',
      ),
      completes,
    );
  });
}
