import 'package:birdbreeder/features/csv_import/models/csv_bird_row.dart';
import 'package:birdbreeder/features/csv_import/models/csv_import_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'csv_bird_import_state.freezed.dart';

@freezed
abstract class CsvBirdImportState with _$CsvBirdImportState {
  /// Initial state - no file selected
  const factory CsvBirdImportState.initial() = CsvBirdImportInitial;

  /// File selected, parsing in progress
  const factory CsvBirdImportState.parsing({
    required String fileName,
  }) = CsvBirdImportParsing;

  /// File parsed, preview available
  const factory CsvBirdImportState.preview({
    required String fileName,
    required List<CsvBirdRow> rows,
    required int validRows,
    required int invalidRows,
  }) = CsvBirdImportPreview;

  /// Import in progress
  const factory CsvBirdImportState.importing({
    required String fileName,
    required List<CsvBirdRow> rows,
    required int currentIndex,
    required int totalRows,
    @Default([]) List<CsvImportResult> results,
  }) = CsvBirdImportImporting;

  /// Import completed
  const factory CsvBirdImportState.completed({
    required CsvImportSummary summary,
  }) = CsvBirdImportCompleted;

  /// Error occurred
  const factory CsvBirdImportState.error({
    required String message,
    String? details,
  }) = CsvBirdImportError;
}
