import 'package:birdbreeder/i18n/strings.g.dart';

/// The file format an export is rendered to.
enum ExportFormat {
  csv,
  pdf;

  String get fileExtension => switch (this) {
        ExportFormat.csv => 'csv',
        ExportFormat.pdf => 'pdf',
      };

  String get mimeType => switch (this) {
        ExportFormat.csv => 'text/csv',
        ExportFormat.pdf => 'application/pdf',
      };

  String label(Translations t) => switch (this) {
        ExportFormat.csv => t.export.format.csv.label,
        ExportFormat.pdf => t.export.format.pdf.label,
      };

  String description(Translations t) => switch (this) {
        ExportFormat.csv => t.export.format.csv.description,
        ExportFormat.pdf => t.export.format.pdf.description,
      };
}
