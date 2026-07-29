import 'package:birdbreeder/i18n/strings.g.dart';

/// Horizontal alignment of a column's cells in rendered output.
///
/// Only the PDF renderer honours this; CSV has no notion of alignment.
enum ExportAlign { left, right }

/// How much of the page width a column claims.
///
/// The PDF table would otherwise size columns to their *unwrapped* content,
/// which hands almost the whole page to whichever column holds free text: a
/// 300-character note measures forty times wider than a ring number, and the
/// remaining columns are squeezed to slivers. Fixed weights keep the table
/// readable no matter what a single row happens to contain.
enum ExportColumnWidth {
  /// Dates, counts, prices, short enum labels.
  compact(0.7),

  /// Names, ring numbers, species — a few words at most.
  standard(1),

  /// Free text the breeder typed, which has no natural upper bound.
  wide(2.5);

  const ExportColumnWidth(this.flex);

  final double flex;
}

/// One column of an export, generic over the row type.
///
/// A column owns everything the renderers need: a stable [id] used as the CSV
/// header, a translated [label] for the PDF table head, and a [value] function
/// that turns a row into an already-formatted cell. Both the CSV writer and
/// the PDF renderer consume the same column list, so a new column is a single
/// entry in a registry rather than a change in two places.
class ExportColumn<T> {
  const ExportColumn({
    required this.id,
    required this.label,
    required this.value,
    this.align = ExportAlign.left,
    this.width = ExportColumnWidth.standard,
  });

  /// Stable machine key. Doubles as the CSV header, so for bird columns it
  /// deliberately matches an alias understood by `CsvBirdRow.fromCsvMap` to
  /// keep the export re-importable.
  final String id;

  /// Human-readable column name, used by the PDF table head and the column
  /// picker.
  final String Function(Translations t) label;

  /// The formatted cell content, or null when the row has no value.
  ///
  /// Formatting belongs here, not in the renderers: a column knows whether it
  /// holds a date, a price or a plain string. [Translations] is passed in
  /// because enum columns such as sex or sale status render as localized text.
  final String? Function(T row, Translations t) value;

  final ExportAlign align;

  final ExportColumnWidth width;

  /// The cell content with null collapsed to an empty string.
  String valueOrEmpty(T row, Translations t) => value(row, t) ?? '';
}

/// A named set of columns offered as a one-tap choice in the export sheet.
///
/// Presets exist because the full registries run to ~20 columns, which is more
/// than anyone wants to pick through on a phone.
class ExportPreset<T> {
  const ExportPreset({
    required this.id,
    required this.label,
    required this.columns,
  });

  final String id;
  final String Function(Translations t) label;
  final List<ExportColumn<T>> columns;
}
