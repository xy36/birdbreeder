part of 'csv_contact_import_cubit.dart';

@freezed
abstract class CsvContactImportState with _$CsvContactImportState {
  /// Initial state - no file selected
  const factory CsvContactImportState.initial() = CsvContactImportInitial;

  /// File selected, parsing in progress
  const factory CsvContactImportState.parsing({
    required String fileName,
  }) = CsvContactImportParsing;

  /// File parsed, preview available
  const factory CsvContactImportState.preview({
    required String fileName,
    required List<CsvContactRow> rows,
    required int validRows,
    required int invalidRows,
  }) = CsvContactImportPreview;

  /// Import in progress
  const factory CsvContactImportState.importing({
    required String fileName,
    required List<CsvContactRow> rows,
    required int currentIndex,
    required int totalRows,
    @Default([]) List<CsvImportResult> results,
  }) = CsvContactImportImporting;

  /// Import completed
  const factory CsvContactImportState.completed({
    required CsvImportSummary summary,
  }) = CsvContactImportCompleted;

  /// Error occurred
  const factory CsvContactImportState.error({
    required String message,
    String? details,
  }) = CsvContactImportError;
}
