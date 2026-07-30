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

/// Renders the Abstammungsnachweis: a fixed three-generation ancestor chart.
///
/// [build] takes the ancestors as a binary-heap array of 15 slots — index 0
/// is the focal bird, `father(i) = 2i + 1`, `mother(i) = 2i + 2` — because a
/// fixed A4-landscape grid needs every position present, unknown ancestors
/// included. A `null` slot renders as a greyed "unknown" box.
class BirdPedigreePdf {
  const BirdPedigreePdf._();

  /// Generations on the certificate: bird, parents, grand-, great-grand.
  static const int generations = 4;

  /// Heap size for [generations] complete levels: 2^4 - 1.
  static const int slotCount = 15;

  static Future<Uint8List> build({
    required List<PedigreeSlot?> slots,
    required ExportContext exportContext,
    required Translations t,
    required PdfFonts fonts,
    PdfHeaderProfile profile = PdfHeaderProfile.fallback,
    Uint8List? logoBytes,
    ({String name, String? number})? breeder,
  }) async {
    assert(slots.length == slotCount, 'expected $slotCount heap slots');

    final document = pw.Document(theme: fonts.theme)
      ..addPage(
        pw.Page(
          pageFormat: PdfPageFormat.a4.landscape,
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
              _generationLabels(t),
              pw.SizedBox(height: 4),
              pw.Expanded(child: _grid(slots, t)),
              pw.SizedBox(height: 8),
              pw.Text(
                t.documents.pedigree.statement,
                style: const pw.TextStyle(fontSize: 8),
              ),
              if (breeder != null) ...[
                pw.SizedBox(height: 4),
                _breederLine(breeder, t),
              ],
              PdfDocWidgets.signatureLine(t.documents.pedigree.signature),
              PdfDocWidgets.footer(context, profile, t),
            ],
          ),
        ),
      );

    return document.save();
  }

  static pw.Widget _generationLabels(Translations t) {
    final labels = [
      t.pedigree.col_bird,
      t.pedigree.col_parents,
      t.pedigree.col_grandparents,
      t.pedigree.col_greatgrandparents,
    ];
    return pw.Row(
      children: [
        for (final label in labels)
          pw.Expanded(
            child: pw.Text(
              label.toUpperCase(),
              style: pw.TextStyle(
                fontSize: 7,
                fontWeight: pw.FontWeight.bold,
                letterSpacing: 0.5,
                color: PdfDocWidgets.muted,
              ),
            ),
          ),
      ],
    );
  }

  /// One column per generation; column `g` stacks its 2^g heap slots.
  static pw.Widget _grid(List<PedigreeSlot?> slots, Translations t) => pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          for (var generation = 0; generation < generations; generation++)
            pw.Expanded(
              child: pw.Column(
                children: [
                  for (var index = (1 << generation) - 1;
                      index < (1 << (generation + 1)) - 1;
                      index++)
                    pw.Expanded(
                      child: _slotBox(slots[index], generation, t),
                    ),
                ],
              ),
            ),
        ],
      );

  static pw.Widget _slotBox(
    PedigreeSlot? slot,
    int generation,
    Translations t,
  ) {
    // The boxes halve in height per generation, so the type scales down with
    // them to keep eight great-grandparent boxes legible.
    final ringSize = switch (generation) { 0 || 1 => 9.0, 2 => 8.0, _ => 7.0 };
    final detailSize = switch (generation) { 0 || 1 => 7.0, _ => 6.0 };

    final box = pw.Container(
      width: double.infinity,
      margin: const pw.EdgeInsets.all(2),
      padding: const pw.EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      decoration: pw.BoxDecoration(
        color: slot == null ? PdfDocWidgets.band : null,
        borderRadius: pw.BorderRadius.circular(3),
        border: pw.Border.all(
          color: slot == null ? PdfDocWidgets.border : PdfDocWidgets.muted,
          width: 0.5,
        ),
      ),
      child: slot == null
          ? pw.Center(
              child: pw.Text(
                t.pedigree.unknown,
                style: pw.TextStyle(
                  fontSize: detailSize,
                  color: PdfDocWidgets.muted,
                ),
              ),
            )
          : _slotContent(slot, generation, ringSize, detailSize),
    );
    return box;
  }

  static pw.Widget _slotContent(
    PedigreeSlot slot,
    int generation,
    double ringSize,
    double detailSize,
  ) {
    // A great-grandparent box is only ~40pt tall; species and color share a
    // line there so a fully known ancestor cannot overflow its border.
    final speciesAndColor =
        [slot.speciesName, slot.colorName].whereType<String>().toList();
    final details = generation < generations - 1
        ? [
            slot.sexLabel,
            slot.speciesName,
            slot.colorName,
            if (slot.bornAt != null) '* ${slot.bornAt}',
            slot.breederName,
          ].whereType<String>()
        : [
            slot.sexLabel,
            if (speciesAndColor.isNotEmpty) speciesAndColor.join(' · '),
            if (slot.bornAt != null) '* ${slot.bornAt}',
          ].whereType<String>();

    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      mainAxisAlignment: pw.MainAxisAlignment.center,
      children: [
        pw.Text(
          slot.ringNumber,
          maxLines: 1,
          style: pw.TextStyle(
            fontSize: ringSize,
            fontWeight: pw.FontWeight.bold,
            color: PdfDocWidgets.accent,
          ),
        ),
        for (final detail in details)
          pw.Text(
            detail,
            maxLines: 1,
            style: pw.TextStyle(fontSize: detailSize),
          ),
      ],
    );
  }

  static pw.Widget _breederLine(
    ({String name, String? number}) breeder,
    Translations t,
  ) {
    final number = breeder.number;
    final parts = [
      '${t.documents.pedigree.breeder}: ${breeder.name}',
      if (number != null && number.trim().isNotEmpty)
        '${t.documents.pedigree.breeder_number}: $number',
    ];
    return pw.Text(
      parts.join('  ·  '),
      style: const pw.TextStyle(fontSize: 9),
    );
  }
}
