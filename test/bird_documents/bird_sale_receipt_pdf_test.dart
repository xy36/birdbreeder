import 'dart:convert';

import 'package:birdbreeder/features/bird_documents/data/bird_sale_receipt_pdf.dart';
import 'package:birdbreeder/features/bird_documents/domain/bird_document_data.dart';
import 'package:birdbreeder/features/export/data/pdf_fonts.dart';
import 'package:birdbreeder/features/export/domain/export_context.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:flutter_test/flutter_test.dart';

const ReceiptParty _seller = (
  name: 'Max Mustermann',
  addressLines: ['Musterweg 1', '12345 Musterstadt'],
);

const ReceiptParty _buyer = (
  name: 'Erika Beispiel',
  addressLines: ['Beispielallee 2', '54321 Beispielstadt'],
);

const ReceiptParty _blank = (name: null, addressLines: []);

const List<DocEntry> _entries = [
  (label: 'Ringnummer', value: '23-DKB-104'),
  (label: 'Art', value: 'Wellensittich'),
  (label: 'Geschlecht', value: 'Henne'),
];

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final translations = AppLocale.de.buildSync();

  Future<List<int>> build({
    ReceiptParty buyer = _buyer,
    String? priceText,
  }) async =>
      BirdSaleReceiptPdf.build(
        seller: _seller,
        buyer: buyer,
        birdEntries: _entries,
        priceText: priceText,
        dateText: '30.07.2026',
        exportContext: ExportContext(
          listTitle: 'Abgabebeleg',
          rowCount: 1,
          generatedAt: DateTime(2026, 7, 30),
        ),
        t: translations,
        fonts: await PdfFonts.load(),
      );

  test('produces a PDF with buyer and price', () async {
    final bytes = await build(priceText: '45,00 €');

    expect(bytes.length, greaterThan(1000));
    expect(latin1.decode(bytes.take(4).toList()), '%PDF');
  });

  test('renders blank lines for an unknown buyer and price', () async {
    final bytes = await build(buyer: _blank);

    expect(bytes.length, greaterThan(1000));
  });

  test('renders characters outside Latin-1 instead of throwing', () async {
    expect(
      build(
        buyer: const (
          name: 'Пётр — „Käufer“ 🐦',
          addressLines: ['Straße № 5'],
        ),
        priceText: '1.234,50 €',
      ),
      completes,
    );
  });
}
