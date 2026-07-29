import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;

/// Loads the TrueType fonts embedded into exported PDFs.
///
/// The `pdf` package's built-in Type1 fonts encode text with a strict
/// `latin1.encode`, which **throws** on any character outside Latin-1 — a "€"
/// in a booking title or a typographic dash in a note would abort the whole
/// export. An embedded TrueType font encodes the full Unicode range and
/// renders unknown glyphs as blanks instead of failing.
///
/// Roboto ships with Flutter under Apache 2.0 and is copied into
/// `assets/fonts/`, so no download happens at export time.
class PdfFonts {
  const PdfFonts._(this.regular, this.bold);

  final pw.Font regular;
  final pw.Font bold;

  static PdfFonts? _cached;

  /// Loads both weights once and reuses them for later exports.
  static Future<PdfFonts> load() async {
    final cached = _cached;
    if (cached != null) return cached;

    final regular = await rootBundle.load('assets/fonts/Roboto-Regular.ttf');
    final bold = await rootBundle.load('assets/fonts/Roboto-Bold.ttf');
    return _cached = PdfFonts._(pw.Font.ttf(regular), pw.Font.ttf(bold));
  }

  pw.ThemeData get theme => pw.ThemeData.withFont(base: regular, bold: bold);
}
