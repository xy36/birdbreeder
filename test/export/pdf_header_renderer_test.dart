import 'dart:typed_data';

import 'package:birdbreeder/features/export/data/pdf_fonts.dart';
import 'package:birdbreeder/features/export/data/pdf_header_renderer.dart';
import 'package:birdbreeder/features/export/domain/export_context.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/pdf_header/entity/pdf_header_profile.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final translations = AppLocale.de.buildSync();
  final breeder = Contact.create().copyWith(
    id: 'p1',
    number: 'Z-42',
    firstName: 'Max',
    lastName: 'Mustermann',
    address: 'Musterweg 1',
    postalCode: '12345',
    city: 'Musterstadt',
  );

  final context = ExportContext(
    listTitle: 'Bestandsliste',
    rowCount: 42,
    generatedAt: DateTime(2026, 7, 29),
    breeder: breeder,
    activeFilters: const ['Art: Wellensittich'],
  );

  /// Renders the header onto a page so layout errors surface as exceptions.
  Future<Uint8List> render(
    PdfHeaderProfile profile, {
    Uint8List? logoBytes,
  }) async {
    final fonts = await PdfFonts.load();
    final document = pw.Document(theme: fonts.theme)
      ..addPage(
        pw.Page(
          pageFormat: PdfPageFormat.a4,
          build: (_) => PdfHeaderRenderer.build(
            profile: profile,
            context: context,
            t: translations,
            logoBytes: logoBytes,
          ),
        ),
      );
    return document.save();
  }

  test('renders every layout', () async {
    for (final layout in PdfHeaderLayout.values) {
      final bytes = await render(
        PdfHeaderProfile.create(name: 'x').copyWith(layout: layout),
      );

      expect(bytes.length, greaterThan(1000), reason: 'layout $layout');
    }
  });

  test('renders without a breeder contact', () async {
    final bytes = await PdfFonts.load().then((fonts) {
      final document = pw.Document(theme: fonts.theme)
        ..addPage(
          pw.Page(
            build: (_) => PdfHeaderRenderer.build(
              profile: PdfHeaderProfile.fallback,
              context: ExportContext(
                listTitle: 'Bestandsliste',
                rowCount: 0,
                generatedAt: DateTime(2026, 7, 29),
              ),
              t: translations,
            ),
          ),
        );
      return document.save();
    });

    expect(bytes.length, greaterThan(1000));
  });

  test('renders with every element switched off', () async {
    final bare = PdfHeaderProfile.create(name: 'x').copyWith(
      titleTemplate: null,
      subtitleTemplate: null,
      showAddressBlock: false,
      showDate: false,
      showCount: false,
      showFilterSummary: false,
      showBreederNumber: false,
      showDivider: false,
    );

    expect(render(bare), completes);
  });

  test('survives a logo that is not a decodable image', () async {
    // MemoryImage rejects garbage bytes; the export must fail loudly here
    // rather than writing a corrupt document.
    expect(
      render(
        PdfHeaderProfile.create(name: 'x'),
        logoBytes: Uint8List.fromList([1, 2, 3]),
      ),
      throwsA(anything),
    );
  });
}
