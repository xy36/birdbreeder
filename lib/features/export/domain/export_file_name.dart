import 'package:intl/intl.dart';

/// Builds and cleans the name an exported file is offered under.
///
/// The breeder may edit the name in the export sheet, so whatever arrives here
/// has to survive being turned into a real path: the share sheet, the
/// receiving app and the file system each reject a different set of
/// characters, and an empty or dot-only name would produce an unopenable file.
class ExportFileName {
  const ExportFileName._();

  static final DateFormat _date = DateFormat('yyyy-MM-dd');

  /// Characters no common file system accepts, plus the control range.
  static final _forbidden = RegExp(r'[<>:"/\\|?*\x00-\x1f]');

  static final _runsOfSeparators = RegExp(r'[\s_-]{2,}');

  /// Leading dots hide the file on unix; trailing dots break it on Windows.
  static final _edgeNoise = RegExp(r'^[.\s_-]+|[.\s_-]+$');

  /// Long enough for a descriptive name, short enough for every file system
  /// once the extension is appended.
  static const maxLength = 100;

  /// The default offered in the sheet, e.g. `bestand_2026-07-29`.
  ///
  /// Carries no extension: the format can still be switched after the field
  /// has been filled, and the writer appends whichever one applies.
  static String suggest(String baseName, {DateTime? now}) =>
      '${baseName}_${_date.format(now ?? DateTime.now())}';

  /// Makes [input] safe to use as a file name, falling back to [fallback]
  /// when nothing usable is left.
  static String sanitize(String input, {required String fallback}) {
    final cleaned = input
        .replaceAll(_forbidden, '-')
        .replaceAll(_runsOfSeparators, '_')
        .replaceAll(_edgeNoise, '')
        .trim();

    if (cleaned.isEmpty) return fallback;
    return cleaned.length <= maxLength
        ? cleaned
        : cleaned.substring(0, maxLength).replaceAll(_edgeNoise, '');
  }
}
