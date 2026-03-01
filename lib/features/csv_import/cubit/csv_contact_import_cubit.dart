import 'dart:convert';
import 'dart:io';

import 'package:birdbreeder/features/csv_import/models/csv_contact_row.dart';
import 'package:birdbreeder/features/csv_import/models/csv_import_result.dart';
import 'package:birdbreeder/i18n/translations.g.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'csv_contact_import_cubit.freezed.dart';
part 'csv_contact_import_state.dart';

class CsvContactImportCubit extends Cubit<CsvContactImportState> {
  CsvContactImportCubit({
    required this.birdBreederCubit,
  }) : super(const CsvContactImportState.initial());

  final BirdBreederCubit birdBreederCubit;

  // Cache for existing contact numbers to prevent duplicates
  final Set<String> _existingContactNumbers = {};

  Future<void> pickAndParseFile() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        withData: true,
      );

      if (result == null || result.files.isEmpty) {
        return; // User cancelled
      }

      final file = result.files.first;
      final fileName = file.name;

      // Validate file extension manually
      if (!fileName.toLowerCase().endsWith('.csv')) {
        emit(
          CsvContactImportState.error(
            message: t.csv_import.errors.select_csv_file,
            details: t.csv_import.errors.not_csv_file,
          ),
        );
        return;
      }

      emit(CsvContactImportState.parsing(fileName: fileName));

      String csvContent;
      if (file.bytes != null) {
        csvContent = utf8.decode(file.bytes!);
      } else if (file.path != null) {
        csvContent = await File(file.path!).readAsString();
      } else {
        emit(
          CsvContactImportState.error(
            message: t.csv_import.errors.could_not_read_file,
          ),
        );
        return;
      }

      final rows = _parseCsv(csvContent);

      final validRows = rows.where((r) => r.isValid).length;
      final invalidRows = rows.where((r) => r.hasError || !r.isValid).length;

      emit(
        CsvContactImportState.preview(
          fileName: fileName,
          rows: rows,
          validRows: validRows,
          invalidRows: invalidRows,
        ),
      );
    } catch (e) {
      emit(
        CsvContactImportState.error(
          message: t.csv_import.errors.error_reading_file,
          details: e.toString(),
        ),
      );
    }
  }

  List<CsvContactRow> _parseCsv(String content) {
    const converter = CsvToListConverter(
      fieldDelimiter: ';',
      eol: '\n',
      shouldParseNumbers: false,
    );

    var rows = converter.convert(content);

    // If we got only one row (header), try comma delimiter
    if (rows.length <= 1) {
      const commaConverter = CsvToListConverter(
        eol: '\n',
        shouldParseNumbers: false,
      );
      final commaRows = commaConverter.convert(content);
      if (commaRows.length > rows.length) {
        rows = commaRows;
      }
    }

    if (rows.isEmpty) return [];

    // First row is header
    final headers =
        rows.first.map((e) => e.toString().toLowerCase().trim()).toList();

    return rows.skip(1).indexed.map((indexedRow) {
      final (index, row) = indexedRow;
      final map = <String, dynamic>{};

      for (var i = 0; i < headers.length && i < row.length; i++) {
        map[headers[i]] = row[i];
      }

      return CsvContactRow.fromCsvMap(map, index + 1);
    }).toList();
  }

  Future<void> startImport() async {
    final currentState = state;
    if (currentState is! CsvContactImportPreview) return;

    final rows = currentState.rows.where((r) => r.isValid).toList();
    final totalRows = rows.length;

    // Initialize cache with existing data
    _initializeCaches();

    emit(
      CsvContactImportState.importing(
        fileName: currentState.fileName,
        rows: rows,
        currentIndex: 0,
        totalRows: totalRows,
        results: [],
      ),
    );

    final results = <CsvImportResult>[];

    for (var i = 0; i < rows.length; i++) {
      final row = rows[i];

      emit(
        CsvContactImportState.importing(
          fileName: currentState.fileName,
          rows: rows,
          currentIndex: i + 1,
          totalRows: totalRows,
          results: results,
        ),
      );

      try {
        final importResult = await _importContact(row);
        results.add(importResult);
      } catch (e) {
        results.add(
          CsvImportResult(
            rowIndex: row.rowIndex,
            ringNumber: row.displayName,
            errorMessage: e.toString(),
          ),
        );
      }
    }

    final summary = CsvImportSummary(
      totalRows: currentState.rows.length,
      successfulImports: results.where((r) => r.success).length,
      failedImports: results.where((r) => !r.success && !r.skipped).length,
      skippedDuplicates: results.where((r) => r.skipped).length,
      results: results,
    );

    // Reload contacts in main cubit
    await birdBreederCubit.reloadContacts();

    emit(CsvContactImportState.completed(summary: summary));
  }

  void _initializeCaches() {
    _existingContactNumbers.clear();

    final resources = birdBreederCubit.state.birdBreederResources;

    // Cache existing contact numbers to prevent duplicates
    for (final contact in resources.contacts) {
      if (contact.number != null && contact.number!.isNotEmpty) {
        _existingContactNumbers.add(contact.number!.toLowerCase());
      }
    }
  }

  Future<CsvImportResult> _importContact(CsvContactRow row) async {
    // Check if contact number already exists (if provided)
    if (row.number != null && row.number!.isNotEmpty) {
      final numberKey = row.number!.toLowerCase();
      if (_existingContactNumbers.contains(numberKey)) {
        return CsvImportResult(
          rowIndex: row.rowIndex,
          ringNumber: row.displayName,
          skipped: true,
          errorMessage:
              t.csv_import.errors.contact_number_exists(Number: row.number!),
        );
      }
    }

    // Create the contact
    final contact = Contact.create().copyWith(
      number: row.number,
      firstName: row.firstName,
      lastName: row.lastName,
      phone: row.phone,
      cellPhoneNumber: row.cellPhoneNumber,
      email: row.email,
      address: row.address,
      city: row.city,
      postalCode: row.postalCode,
      country: row.country,
      website: row.website,
    );

    final createdContact = await birdBreederCubit.addContact(contact);

    if (createdContact == null) {
      return CsvImportResult(
        rowIndex: row.rowIndex,
        ringNumber: row.displayName,
        errorMessage: t.csv_import.errors.could_not_create_contact,
      );
    }

    // Add contact number to cache to prevent duplicates within the same import
    if (row.number != null && row.number!.isNotEmpty) {
      _existingContactNumbers.add(row.number!.toLowerCase());
    }

    return CsvImportResult(
      rowIndex: row.rowIndex,
      ringNumber: row.displayName,
      success: true,
      createdBirdId: createdContact.id,
    );
  }

  void reset() {
    _existingContactNumbers.clear();
    emit(const CsvContactImportState.initial());
  }
}
