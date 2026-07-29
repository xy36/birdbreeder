import 'package:birdbreeder/features/export/domain/export_column.dart';
import 'package:birdbreeder/i18n/strings.g.dart';

/// Key/value pairs rendered beneath a PDF table, e.g. income/expense/balance.
///
/// CSV deliberately omits these so the file stays machine-readable.
typedef ExportSummaryBuilder<T> = List<({String label, String value})> Function(
  List<T> rows,
  Translations t,
);

/// Everything a screen hands to the export feature.
///
/// [items] is the list the screen currently renders — already filtered,
/// searched and sorted. The export never filters on its own: on every
/// overview the visible list is the product of a filter cubit, a search cubit
/// and screen-local state (selected year, month scope, kind toggle), so
/// re-deriving it here would export something other than what the user sees.
class ExportRequest<T> {
  const ExportRequest({
    required this.items,
    required this.listTitle,
    required this.fileBaseName,
    required this.presets,
    this.activeFilters = const [],
    this.summary,
  });

  /// Exactly the rows the screen displays.
  final List<T> items;

  /// Human-readable name of the list, e.g. "Bestandsliste". Shown in the sheet
  /// and available to the PDF header as `{{liste}}`.
  final String listTitle;

  /// Filename stem; the date and extension are appended by the file writer.
  final String fileBaseName;

  /// Column sets offered as a one-tap choice. Must not be empty; the first
  /// entry is preselected.
  final List<ExportPreset<T>> presets;

  /// Labels of the filters currently in effect, supplied by the screen because
  /// it already renders them as chips. Used for the PDF header's `{{filter}}`.
  final List<String> activeFilters;

  final ExportSummaryBuilder<T>? summary;

  bool get isEmpty => items.isEmpty;
}
