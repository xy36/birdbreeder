import 'package:birdbreeder/features/bird_documents/domain/bird_document_data.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/models/pdf_header/entity/pdf_header_profile.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

/// Shared building blocks of the single-bird document PDFs.
///
/// Kept in one place so the three documents (profile sheet, pedigree
/// certificate, transfer receipt) stay visually consistent with each other
/// and with the list exports, which use the same palette.
class PdfDocWidgets {
  const PdfDocWidgets._();

  static const PdfColor accent = PdfColors.blueGrey800;
  static const PdfColor muted = PdfColors.blueGrey500;
  static const PdfColor band = PdfColors.grey100;
  static const PdfColor border = PdfColors.grey300;

  /// Document headline with the ring number as its counterpart.
  static pw.Widget title(String title, String? ringNumber) => pw.Container(
        margin: const pw.EdgeInsets.only(bottom: 10),
        child: pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.end,
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Text(
              title,
              style: pw.TextStyle(
                fontSize: 14,
                fontWeight: pw.FontWeight.bold,
                color: accent,
              ),
            ),
            if (ringNumber != null)
              pw.Text(
                ringNumber,
                style: pw.TextStyle(
                  fontSize: 11,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
          ],
        ),
      );

  /// Bold section title on a light band, like the export table head.
  static pw.Widget sectionHeader(String title) => pw.Container(
        width: double.infinity,
        margin: const pw.EdgeInsets.only(top: 8, bottom: 2),
        padding: const pw.EdgeInsets.symmetric(horizontal: 6, vertical: 3),
        color: band,
        child: pw.Text(
          title,
          style: pw.TextStyle(
            fontSize: 8,
            fontWeight: pw.FontWeight.bold,
            color: accent,
          ),
        ),
      );

  /// Two-column label/value table for pre-formatted entries.
  static pw.Widget keyValueTable(List<DocEntry> entries) => pw.Table(
        columnWidths: const {
          0: pw.FlexColumnWidth(),
          1: pw.FlexColumnWidth(2.2),
        },
        border: const pw.TableBorder(
          horizontalInside: pw.BorderSide(color: border, width: 0.5),
        ),
        children: [
          for (final entry in entries)
            pw.TableRow(
              children: [
                pw.Padding(
                  padding:
                      const pw.EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                  child: pw.Text(
                    entry.label,
                    style: const pw.TextStyle(fontSize: 8, color: muted),
                  ),
                ),
                pw.Padding(
                  padding:
                      const pw.EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                  child: pw.Text(
                    entry.value,
                    style: const pw.TextStyle(fontSize: 9),
                  ),
                ),
              ],
            ),
        ],
      );

  /// A ruled line with its caption below, wide enough for a signature.
  static pw.Widget signatureLine(String caption) => pw.Container(
        width: 200,
        margin: const pw.EdgeInsets.only(top: 28),
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Container(
              decoration: const pw.BoxDecoration(
                border: pw.Border(bottom: pw.BorderSide(width: 0.8)),
              ),
              height: 1,
            ),
            pw.SizedBox(height: 3),
            pw.Text(
              caption,
              style: const pw.TextStyle(fontSize: 7, color: muted),
            ),
          ],
        ),
      );

  /// Slim repeat of the document title on continuation pages.
  static pw.Widget runningHead(String title) => pw.Container(
        margin: const pw.EdgeInsets.only(bottom: 8),
        padding: const pw.EdgeInsets.only(bottom: 4),
        decoration: const pw.BoxDecoration(
          border: pw.Border(bottom: pw.BorderSide(color: muted, width: 0.5)),
        ),
        child: pw.Text(
          title,
          style: const pw.TextStyle(fontSize: 9, color: muted),
        ),
      );

  /// Footer with the profile's free text and optional page numbers.
  ///
  /// Mirrors the list exporter's footer so a breeder's letterhead behaves the
  /// same on lists and documents.
  static pw.Widget footer(
    pw.Context pageContext,
    PdfHeaderProfile profile,
    Translations t,
  ) {
    final page = profile.showPageNumbers
        ? t.export.pdf.page(
            Page: pageContext.pageNumber,
            Total: pageContext.pagesCount,
          )
        : null;

    return pw.Container(
      margin: const pw.EdgeInsets.only(top: 8),
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: [
          pw.Expanded(
            child: pw.Text(
              profile.footerTemplate?.trim() ?? '',
              style: const pw.TextStyle(fontSize: 8, color: muted),
            ),
          ),
          if (page != null)
            pw.Text(
              page,
              style: const pw.TextStyle(fontSize: 8, color: muted),
            ),
        ],
      ),
    );
  }
}
