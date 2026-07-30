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

/// Renders the Abgabebeleg: a transfer/sale receipt for one bird.
///
/// A buyer without a stored contact (party name null) renders as ruled blank
/// lines, so the receipt still works when it is filled in by hand at the
/// handover. The same applies to a missing price.
class BirdSaleReceiptPdf {
  const BirdSaleReceiptPdf._();

  static Future<Uint8List> build({
    required ReceiptParty seller,
    required ReceiptParty buyer,
    required List<DocEntry> birdEntries,
    required String? priceText,
    required String dateText,
    required ExportContext exportContext,
    required Translations t,
    required PdfFonts fonts,
    PdfHeaderProfile profile = PdfHeaderProfile.fallback,
    Uint8List? logoBytes,
  }) async {
    final document = pw.Document(theme: fonts.theme)
      ..addPage(
        pw.Page(
          pageFormat: PdfPageFormat.a4,
          margin: const pw.EdgeInsets.fromLTRB(28, 28, 28, 24),
          build: (context) => pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              PdfHeaderRenderer.build(
                profile: profile,
                context: exportContext,
                t: t,
                logoBytes: logoBytes,
              ),
              PdfDocWidgets.title(exportContext.listTitle, null),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: _partyBox(t.documents.receipt.seller, seller),
                  ),
                  pw.SizedBox(width: 12),
                  pw.Expanded(
                    child: _partyBox(t.documents.receipt.buyer, buyer),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              PdfDocWidgets.sectionHeader(t.documents.receipt.bird_data),
              PdfDocWidgets.keyValueTable(birdEntries),
              pw.SizedBox(height: 10),
              pw.Row(
                children: [
                  pw.Expanded(
                    child: _labeledValue(
                      t.documents.receipt.price,
                      priceText,
                    ),
                  ),
                  pw.Expanded(
                    child: _labeledValue(t.documents.receipt.date, dateText),
                  ),
                ],
              ),
              pw.SizedBox(height: 12),
              pw.Text(
                t.documents.receipt.statement,
                style: const pw.TextStyle(fontSize: 9),
              ),
              pw.Spacer(),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  PdfDocWidgets.signatureLine(
                    t.documents.receipt.signature_seller,
                  ),
                  PdfDocWidgets.signatureLine(
                    t.documents.receipt.signature_buyer,
                  ),
                ],
              ),
              PdfDocWidgets.footer(context, profile, t),
            ],
          ),
        ),
      );

    return document.save();
  }

  /// Caption plus either the known name and address or ruled fill-in lines.
  static pw.Widget _partyBox(String caption, ReceiptParty party) {
    final name = party.name;
    return pw.Container(
      padding: const pw.EdgeInsets.all(8),
      decoration: pw.BoxDecoration(
        border: pw.Border.all(color: PdfDocWidgets.border, width: 0.5),
        borderRadius: pw.BorderRadius.circular(3),
      ),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(
            caption,
            style: pw.TextStyle(
              fontSize: 8,
              fontWeight: pw.FontWeight.bold,
              color: PdfDocWidgets.accent,
            ),
          ),
          pw.SizedBox(height: 4),
          if (name == null)
            for (var line = 0; line < 3; line++) _blankLine()
          else ...[
            pw.Text(name, style: const pw.TextStyle(fontSize: 9)),
            for (final line in party.addressLines)
              pw.Text(line, style: const pw.TextStyle(fontSize: 9)),
          ],
        ],
      ),
    );
  }

  static pw.Widget _blankLine() => pw.Container(
        height: 14,
        margin: const pw.EdgeInsets.only(bottom: 2),
        decoration: const pw.BoxDecoration(
          border: pw.Border(
            bottom: pw.BorderSide(color: PdfDocWidgets.muted, width: 0.5),
          ),
        ),
      );

  /// Small muted label above the value; a missing value becomes a ruled line.
  static pw.Widget _labeledValue(String label, String? value) => pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(
            label,
            style: const pw.TextStyle(
              fontSize: 7,
              color: PdfDocWidgets.muted,
            ),
          ),
          pw.SizedBox(height: 2),
          if (value == null)
            pw.Container(
              width: 120,
              height: 12,
              decoration: const pw.BoxDecoration(
                border: pw.Border(
                  bottom: pw.BorderSide(color: PdfDocWidgets.muted, width: 0.5),
                ),
              ),
            )
          else
            pw.Text(
              value,
              style: pw.TextStyle(
                fontSize: 10,
                fontWeight: pw.FontWeight.bold,
              ),
            ),
        ],
      );
}
