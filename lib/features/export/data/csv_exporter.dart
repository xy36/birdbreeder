import 'package:birdbreeder/features/export/domain/export_column.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:csv/csv.dart';

/// Renders any row type to CSV using a column list.
///
/// The output is deliberately shaped like the input the app's own CSV import
/// expects: semicolon separated, `dd.MM.yyyy` dates, decimal commas, and
/// column ids as headers. A file exported with the complete preset can be read
/// back in without any mapping step.
class CsvExporter {
  const CsvExporter._();

  /// Byte order mark. Without it Excel on Windows reads UTF-8 as Latin-1 and
  /// renders every umlaut as mojibake.
  static const _byteOrderMark = '\uFEFF';

  /// Semicolon, matching what `CsvBirdImportCubit` parses. The converter's
  /// default `\r\n` line ending is what spreadsheet software expects.
  static const _converter = ListToCsvConverter(fieldDelimiter: ';');

  /// Builds the file content for [rows], one line per row plus a header line.
  static String build<T>({
    required List<T> rows,
    required List<ExportColumn<T>> columns,
    required Translations t,
  }) {
    final lines = <List<String>>[
      [for (final column in columns) column.id],
      for (final row in rows)
        [for (final column in columns) column.valueOrEmpty(row, t)],
    ];

    return '$_byteOrderMark${_converter.convert(lines)}';
  }
}
