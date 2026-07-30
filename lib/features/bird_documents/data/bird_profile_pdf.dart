import 'dart:typed_data';

import 'package:birdbreeder/features/bird_documents/data/pdf_doc_widgets.dart';
import 'package:birdbreeder/features/bird_documents/domain/bird_document_data.dart';
import 'package:birdbreeder/features/export/data/pdf_fonts.dart';
import 'package:birdbreeder/features/export/data/pdf_header_renderer.dart';
import 'package:birdbreeder/features/export/domain/export_context.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/models/pdf_header/entity/pdf_header_profile.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

/// Renders the Steckbrief: one bird's master data on a single page.
///
/// Consumes pre-resolved [DocSection]s so the renderer stays pure; the
/// assembler decides what a section contains and drops empty values, which is
/// what keeps a sparse bird on one page.
class BirdProfilePdf {
  const BirdProfilePdf._();

  /// Height of the photo box; width follows 3:4 portrait proportions.
  static const double _photoHeight = 140;

  static Future<Uint8List> build({
    required List<DocSection> sections,
    required ExportContext exportContext,
    required Translations t,
    required PdfFonts fonts,
    PdfHeaderProfile profile = PdfHeaderProfile.fallback,
    Uint8List? logoBytes,
    Uint8List? photoBytes,
    String? ringNumber,
    String? notes,
  }) async {
    final document = pw.Document(theme: fonts.theme)
      ..addPage(
        pw.MultiPage(
          pageFormat: PdfPageFormat.a4,
          margin: const pw.EdgeInsets.fromLTRB(28, 28, 28, 24),
          header: (context) => context.pageNumber == 1
              ? PdfHeaderRenderer.build(
                  profile: profile,
                  context: exportContext,
                  t: t,
                  logoBytes: logoBytes,
                )
              : PdfDocWidgets.runningHead(exportContext.listTitle),
          footer: (context) => PdfDocWidgets.footer(context, profile, t),
          build: (_) => [
            PdfDocWidgets.title(exportContext.listTitle, ringNumber),
            ..._body(sections, photoBytes),
            if (notes != null) ..._notes(notes, t),
          ],
        ),
      );

    return document.save();
  }

  /// The sections, with the photo beside the first one when there is one.
  static List<pw.Widget> _body(
    List<DocSection> sections,
    Uint8List? photoBytes,
  ) {
    if (sections.isEmpty) return const [];
    if (photoBytes == null) {
      return [for (final section in sections) ..._section(section)];
    }

    final first = sections.first;
    return [
      pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Expanded(child: pw.Column(children: _section(first))),
          pw.SizedBox(width: 12),
          _photo(photoBytes),
        ],
      ),
      for (final section in sections.skip(1)) ..._section(section),
    ];
  }

  static List<pw.Widget> _section(DocSection section) => [
        PdfDocWidgets.sectionHeader(section.title),
        PdfDocWidgets.keyValueTable(section.entries),
      ];

  static pw.Widget _photo(Uint8List bytes) => pw.Container(
        width: _photoHeight * 3 / 4,
        height: _photoHeight,
        decoration: pw.BoxDecoration(
          border: pw.Border.all(color: PdfDocWidgets.border, width: 0.5),
        ),
        child: pw.Image(pw.MemoryImage(bytes), fit: pw.BoxFit.cover),
      );

  /// Notes as a capped paragraph, so one endless note cannot break the
  /// one-page promise.
  static List<pw.Widget> _notes(String notes, Translations t) => [
        PdfDocWidgets.sectionHeader(t.documents.profile.section_notes),
        pw.Padding(
          padding: const pw.EdgeInsets.symmetric(horizontal: 6, vertical: 3),
          child: pw.Text(
            notes,
            style: const pw.TextStyle(fontSize: 9),
            maxLines: 14,
          ),
        ),
      ];
}
