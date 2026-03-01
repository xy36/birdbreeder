import 'package:freezed_annotation/freezed_annotation.dart';

part 'csv_import_result.freezed.dart';

/// Result of a single bird import
@freezed
abstract class CsvImportResult with _$CsvImportResult {
  const factory CsvImportResult({
    required int rowIndex,
    required String ringNumber,
    @Default(false) bool success,
    @Default(false) bool skipped,
    String? errorMessage,
    String? createdBirdId,
    @Default(false) bool speciesCreated,
    @Default(false) bool colorCreated,
    @Default(false) bool cageCreated,
  }) = _CsvImportResult;
}

/// Summary of the entire import operation
@freezed
abstract class CsvImportSummary with _$CsvImportSummary {
  const factory CsvImportSummary({
    @Default(0) int totalRows,
    @Default(0) int successfulImports,
    @Default(0) int failedImports,
    @Default(0) int skippedDuplicates,
    @Default(0) int speciesCreated,
    @Default(0) int colorsCreated,
    @Default(0) int cagesCreated,
    @Default([]) List<CsvImportResult> results,
  }) = _CsvImportSummary;

  const CsvImportSummary._();

  int get skippedRows =>
      totalRows - successfulImports - failedImports - skippedDuplicates;
}
