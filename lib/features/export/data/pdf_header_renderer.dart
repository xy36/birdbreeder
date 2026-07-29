import 'dart:typed_data';

import 'package:birdbreeder/features/export/data/pdf_template_resolver.dart';
import 'package:birdbreeder/features/export/domain/export_context.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/models/pdf_header/entity/pdf_header_profile.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

/// Turns a [PdfHeaderProfile] into the letterhead on page one.
///
/// The single renderer for a profile: the editor preview builds a real PDF
/// through this same code, so what a breeder arranges is exactly what prints.
class PdfHeaderRenderer {
  const PdfHeaderRenderer._();

  static const PdfColor accent = PdfColors.blueGrey800;
  static const PdfColor muted = PdfColors.blueGrey500;

  static pw.Widget build({
    required PdfHeaderProfile profile,
    required ExportContext context,
    required Translations t,
    Uint8List? logoBytes,
  }) {
    final title = PdfTemplateResolver.resolve(
      profile.titleTemplate,
      context,
      t,
    );
    final subtitle = PdfTemplateResolver.resolve(
      profile.subtitleTemplate,
      context,
      t,
    );

    final body = switch (profile.layout) {
      PdfHeaderLayout.logoLeft => _logoLeft(
          profile: profile,
          context: context,
          t: t,
          title: title,
          subtitle: subtitle,
          logoBytes: logoBytes,
        ),
      PdfHeaderLayout.centered => _centered(
          profile: profile,
          context: context,
          t: t,
          title: title,
          subtitle: subtitle,
          logoBytes: logoBytes,
        ),
      PdfHeaderLayout.addressLeftLogoRight => _addressLeftLogoRight(
          profile: profile,
          context: context,
          t: t,
          title: title,
          subtitle: subtitle,
          logoBytes: logoBytes,
        ),
    };

    return pw.Container(
      margin: const pw.EdgeInsets.only(bottom: 12),
      padding: const pw.EdgeInsets.only(bottom: 8),
      decoration: profile.showDivider
          ? const pw.BoxDecoration(
              border: pw.Border(
                bottom: pw.BorderSide(color: accent, width: 1.5),
              ),
            )
          : null,
      child: body,
    );
  }

  static pw.Widget _logoLeft({
    required PdfHeaderProfile profile,
    required ExportContext context,
    required Translations t,
    required String? title,
    required String? subtitle,
    required Uint8List? logoBytes,
  }) =>
      pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          if (logoBytes != null) ...[
            _logo(logoBytes, profile.logoSize),
            pw.SizedBox(width: 12),
          ],
          pw.Expanded(
            child: _textBlock(
              profile: profile,
              context: context,
              title: title,
              subtitle: subtitle,
              alignment: pw.CrossAxisAlignment.start,
            ),
          ),
          _metaBlock(
            profile: profile,
            context: context,
            t: t,
            alignment: pw.CrossAxisAlignment.end,
          ),
        ],
      );

  static pw.Widget _centered({
    required PdfHeaderProfile profile,
    required ExportContext context,
    required Translations t,
    required String? title,
    required String? subtitle,
    required Uint8List? logoBytes,
  }) =>
      pw.Column(
        children: [
          if (logoBytes != null) ...[
            _logo(logoBytes, profile.logoSize),
            pw.SizedBox(height: 6),
          ],
          _textBlock(
            profile: profile,
            context: context,
            title: title,
            subtitle: subtitle,
            alignment: pw.CrossAxisAlignment.center,
            textAlign: pw.TextAlign.center,
          ),
          pw.SizedBox(height: 4),
          _metaBlock(
            profile: profile,
            context: context,
            t: t,
            alignment: pw.CrossAxisAlignment.center,
            textAlign: pw.TextAlign.center,
          ),
        ],
      );

  static pw.Widget _addressLeftLogoRight({
    required PdfHeaderProfile profile,
    required ExportContext context,
    required Translations t,
    required String? title,
    required String? subtitle,
    required Uint8List? logoBytes,
  }) =>
      pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Expanded(
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                _textBlock(
                  profile: profile,
                  context: context,
                  title: title,
                  subtitle: subtitle,
                  alignment: pw.CrossAxisAlignment.start,
                ),
                pw.SizedBox(height: 4),
                _metaBlock(
                  profile: profile,
                  context: context,
                  t: t,
                  alignment: pw.CrossAxisAlignment.start,
                ),
              ],
            ),
          ),
          if (logoBytes != null) _logo(logoBytes, profile.logoSize),
        ],
      );

  static pw.Widget _logo(Uint8List bytes, PdfLogoSize size) => pw.Image(
        pw.MemoryImage(bytes),
        height: size.points,
      );

  /// Title, subtitle and the address lines.
  static pw.Widget _textBlock({
    required PdfHeaderProfile profile,
    required ExportContext context,
    required String? title,
    required String? subtitle,
    required pw.CrossAxisAlignment alignment,
    pw.TextAlign? textAlign,
  }) {
    final addressLines =
        profile.showAddressBlock ? _addressLines(profile, context) : <String>[];

    return pw.Column(
      crossAxisAlignment: alignment,
      children: [
        if (title != null)
          pw.Text(
            title,
            textAlign: textAlign,
            style: pw.TextStyle(
              fontSize: 18,
              fontWeight: pw.FontWeight.bold,
              color: accent,
            ),
          ),
        if (subtitle != null)
          pw.Text(
            subtitle,
            textAlign: textAlign,
            style: const pw.TextStyle(fontSize: 10),
          ),
        for (final line in addressLines)
          pw.Text(
            line,
            textAlign: textAlign,
            style: const pw.TextStyle(fontSize: 8, color: muted),
          ),
      ],
    );
  }

  /// Date, row count and the active filters.
  static pw.Widget _metaBlock({
    required PdfHeaderProfile profile,
    required ExportContext context,
    required Translations t,
    required pw.CrossAxisAlignment alignment,
    pw.TextAlign? textAlign,
  }) {
    final showFilters =
        profile.showFilterSummary && context.activeFilters.isNotEmpty;

    return pw.Column(
      crossAxisAlignment: alignment,
      children: [
        if (profile.showDate)
          pw.Text(
            PdfTemplateResolver.resolve('{{datum}}', context, t) ?? '',
            textAlign: textAlign,
            style: const pw.TextStyle(fontSize: 10),
          ),
        if (profile.showCount)
          pw.Text(
            PdfTemplateResolver.resolve('{{anzahl}}', context, t) ?? '',
            textAlign: textAlign,
            style: const pw.TextStyle(fontSize: 8, color: muted),
          ),
        if (showFilters)
          pw.Container(
            constraints: const pw.BoxConstraints(maxWidth: 260),
            child: pw.Text(
              context.activeFilters.join(' · '),
              textAlign: textAlign ?? pw.TextAlign.right,
              style: const pw.TextStyle(fontSize: 8, color: muted),
            ),
          ),
      ],
    );
  }

  /// The override wins when set; otherwise the lines come from the app-user
  /// contact, with the breeder number kept separate so it can be switched off
  /// on its own.
  static List<String> _addressLines(
    PdfHeaderProfile profile,
    ExportContext context,
  ) {
    final override = profile.addressOverride?.trim();
    if (override != null && override.isNotEmpty) {
      return override.split('\n').map((line) => line.trim()).toList();
    }

    final breeder = context.breeder;
    if (breeder == null) return const [];

    final city = [breeder.postalCode, breeder.city]
        .where((part) => part != null && part.trim().isNotEmpty)
        .join(' ');

    return [
      if (profile.showBreederNumber &&
          breeder.number != null &&
          breeder.number!.trim().isNotEmpty)
        breeder.number!.trim(),
      if (breeder.address != null && breeder.address!.trim().isNotEmpty)
        breeder.address!.trim(),
      if (city.isNotEmpty) city,
    ];
  }
}
