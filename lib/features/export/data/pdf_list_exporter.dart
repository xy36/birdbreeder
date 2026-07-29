import 'dart:typed_data';

import 'package:birdbreeder/features/export/data/pdf_fonts.dart';
import 'package:birdbreeder/features/export/data/pdf_header_renderer.dart';
import 'package:birdbreeder/features/export/data/pdf_template_resolver.dart';
import 'package:birdbreeder/features/export/domain/export_column.dart';
import 'package:birdbreeder/features/export/domain/export_context.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/models/pdf_header/entity/pdf_header_profile.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

/// Renders any row type to a printable PDF table.
///
/// Consumes the same [ExportColumn] list as the CSV writer, so the two formats
/// can never show different data. Everything visual lives here; the columns
/// stay format-agnostic.
class PdfListExporter {
  const PdfListExporter._();

  /// Above this many columns the table no longer fits upright.
  static const _landscapeThreshold = 6;

  static const PdfColor _accent = PdfColors.blueGrey800;
  static const PdfColor _muted = PdfColors.blueGrey500;
  static const PdfColor _zebra = PdfColors.grey100;

  /// Builds the document bytes for [rows] rendered with [columns].
  ///
  /// The page orientation follows the column count rather than the list type:
  /// a preset decides how wide a table gets, and the same list can be exported
  /// with five columns or with twenty-five.
  static Future<Uint8List> build<T>({
    required List<T> rows,
    required List<ExportColumn<T>> columns,
    required ExportContext exportContext,
    required Translations t,
    required PdfFonts fonts,
    PdfHeaderProfile profile = PdfHeaderProfile.fallback,
    Uint8List? logoBytes,
    List<({String label, String value})> summary = const [],
  }) async {
    final format = columns.length > _landscapeThreshold
        ? PdfPageFormat.a4.landscape
        : PdfPageFormat.a4;

    final document = pw.Document(theme: fonts.theme)
      ..addPage(
        pw.MultiPage(
          pageFormat: format,
          margin: const pw.EdgeInsets.fromLTRB(28, 28, 28, 24),
          header: (context) => context.pageNumber == 1
              ? PdfHeaderRenderer.build(
                  profile: profile,
                  context: exportContext,
                  t: t,
                  logoBytes: logoBytes,
                )
              : _runningHead(exportContext, profile, t),
          footer: (context) => _footer(context, profile, t),
          build: (_) => [
            _table(rows: rows, columns: columns, t: t),
            if (summary.isNotEmpty) _summary(summary),
          ],
        ),
      );

    return document.save();
  }

  /// Slim repeat on continuation pages so a loose sheet stays identifiable.
  ///
  /// Carries the profile's title when it has one, because that is the wording
  /// the breeder recognises — falling back to the list name otherwise.
  static pw.Widget _runningHead(
    ExportContext context,
    PdfHeaderProfile profile,
    Translations t,
  ) =>
      pw.Container(
        margin: const pw.EdgeInsets.only(bottom: 8),
        padding: const pw.EdgeInsets.only(bottom: 4),
        decoration: const pw.BoxDecoration(
          border: pw.Border(bottom: pw.BorderSide(color: _muted, width: 0.5)),
        ),
        child: pw.Text(
          PdfTemplateResolver.resolve(profile.titleTemplate, context, t) ??
              context.listTitle,
          style: const pw.TextStyle(fontSize: 9, color: _muted),
        ),
      );

  static pw.Widget _footer(
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
              style: const pw.TextStyle(fontSize: 8, color: _muted),
            ),
          ),
          if (page != null)
            pw.Text(
              page,
              style: const pw.TextStyle(fontSize: 8, color: _muted),
            ),
        ],
      ),
    );
  }

  static pw.Widget _table<T>({
    required List<T> rows,
    required List<ExportColumn<T>> columns,
    required Translations t,
  }) {
    final alignments = <int, pw.Alignment>{
      for (var i = 0; i < columns.length; i++)
        i: columns[i].align == ExportAlign.right
            ? pw.Alignment.centerRight
            : pw.Alignment.centerLeft,
    };

    // Declared weights rather than the default intrinsic sizing, which
    // measures cells unwrapped and therefore lets one long note swallow the
    // page. With every column flexed, each simply gets its share of the width
    // and long text wraps inside it.
    final widths = <int, pw.TableColumnWidth>{
      for (var i = 0; i < columns.length; i++)
        i: pw.FlexColumnWidth(columns[i].width.flex),
    };

    return pw.TableHelper.fromTextArray(
      columnWidths: widths,
      headers: [for (final column in columns) column.label(t)],
      data: [
        for (final row in rows)
          [for (final column in columns) column.valueOrEmpty(row, t)],
      ],
      headerStyle: pw.TextStyle(
        fontSize: 8,
        fontWeight: pw.FontWeight.bold,
        color: PdfColors.white,
      ),
      headerDecoration: const pw.BoxDecoration(color: _accent),
      headerAlignments: alignments,
      cellStyle: const pw.TextStyle(fontSize: 8),
      cellAlignments: alignments,
      cellPadding: const pw.EdgeInsets.symmetric(horizontal: 4, vertical: 3),
      oddRowDecoration: const pw.BoxDecoration(color: _zebra),
      border: pw.TableBorder.all(color: PdfColors.grey300, width: 0.5),
    );
  }

  static pw.Widget _summary(List<({String label, String value})> entries) =>
      pw.Container(
        margin: const pw.EdgeInsets.only(top: 12),
        padding: const pw.EdgeInsets.all(8),
        decoration: pw.BoxDecoration(
          color: _zebra,
          border: pw.Border.all(color: PdfColors.grey300, width: 0.5),
        ),
        child: pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            for (final entry in entries)
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    entry.label,
                    style: const pw.TextStyle(fontSize: 7, color: _muted),
                  ),
                  pw.Text(
                    entry.value,
                    style: pw.TextStyle(
                      fontSize: 10,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                ],
              ),
          ],
        ),
      );
}
