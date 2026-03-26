import 'dart:convert';
import 'dart:io';

import 'package:birdbreeder/features/csv_import/cubit/csv_bird_import_state.dart';
import 'package:birdbreeder/features/csv_import/models/csv_bird_row.dart';
import 'package:birdbreeder/features/csv_import/models/csv_import_result.dart';
import 'package:birdbreeder/i18n/translations.g.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CsvBirdImportCubit extends Cubit<CsvBirdImportState> {
  CsvBirdImportCubit({
    required this.birdBreederCubit,
  }) : super(const CsvBirdImportState.initial());

  final BirdBreederCubit birdBreederCubit;

  // Cache for created resources during import
  final Map<String, String> _speciesCache = {}; // name -> id
  final Map<String, String> _colorCache = {}; // name -> id
  final Map<String, String> _cageCache = {}; // name -> id
  final Map<String, String> _contactCache = {}; // number -> id
  final Set<String> _existingRingNumbers = {}; // existing ring numbers
  final Map<String, String> _ringNumberToIdCache = {}; // ringNumber -> birdId

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
          CsvBirdImportState.error(
            message: t.csv_import.errors.select_csv_file,
            details: t.csv_import.errors.not_csv_file,
          ),
        );
        return;
      }

      emit(CsvBirdImportState.parsing(fileName: fileName));

      String csvContent;
      if (file.bytes != null) {
        csvContent = utf8.decode(file.bytes!);
      } else if (file.path != null) {
        csvContent = await File(file.path!).readAsString();
      } else {
        emit(
          CsvBirdImportState.error(
            message: t.csv_import.errors.could_not_read_file,
          ),
        );
        return;
      }

      final rows = _parseCsv(csvContent);

      final validRows = rows.where((r) => r.isValid).length;
      final invalidRows = rows.where((r) => r.hasError || !r.isValid).length;

      emit(
        CsvBirdImportState.preview(
          fileName: fileName,
          rows: rows,
          validRows: validRows,
          invalidRows: invalidRows,
        ),
      );
    } on Exception catch (e) {
      emit(
        CsvBirdImportState.error(
          message: t.csv_import.errors.error_reading_file,
          details: e.toString(),
        ),
      );
    }
  }

  List<CsvBirdRow> _parseCsv(String content) {
    const converter = CsvToListConverter(
      fieldDelimiter: ';',
      eol: '\n',
      shouldParseNumbers: false,
    );

    // Try semicolon first (common in German CSVs), then comma
    var rows = converter.convert(content);
    if (rows.isEmpty || rows.first.length <= 1) {
      rows = const CsvToListConverter(
        eol: '\n',
        shouldParseNumbers: false,
      ).convert(content);
    }

    if (rows.isEmpty) {
      return [];
    }

    // First row is headers
    final headers =
        rows.first.map((h) => h.toString().toLowerCase().trim()).toList();
    final dataRows = rows.skip(1);

    return dataRows.indexed.map((indexedRow) {
      final (index, row) = indexedRow;
      final map = <String, dynamic>{};

      for (var i = 0; i < headers.length && i < row.length; i++) {
        map[headers[i]] = row[i];
      }

      return CsvBirdRow.fromCsvMap(map, index + 1);
    }).toList();
  }

  Future<void> startImport() async {
    final currentState = state;
    if (currentState is! CsvBirdImportPreview) return;

    final validRows = currentState.rows.where((r) => r.isValid).toList();

    // Initialize caches with existing data
    _initializeCaches();

    // Sort rows so parents are imported before children
    final rows = _sortRowsByDependencies(validRows);
    final totalRows = rows.length;

    emit(
      CsvBirdImportState.importing(
        fileName: currentState.fileName,
        rows: rows,
        currentIndex: 0,
        totalRows: totalRows,
        results: [],
      ),
    );

    final results = <CsvImportResult>[];
    var speciesCreated = 0;
    var colorsCreated = 0;
    var cagesCreated = 0;

    for (var i = 0; i < rows.length; i++) {
      final row = rows[i];

      emit(
        CsvBirdImportState.importing(
          fileName: currentState.fileName,
          rows: rows,
          currentIndex: i + 1,
          totalRows: totalRows,
          results: results,
        ),
      );

      try {
        final importResult = await _importBird(row);
        results.add(importResult);

        if (importResult.speciesCreated) speciesCreated++;
        if (importResult.colorCreated) colorsCreated++;
        if (importResult.cageCreated) cagesCreated++;
      } on Exception catch (e) {
        results.add(
          CsvImportResult(
            rowIndex: row.rowIndex,
            ringNumber: row.ringNumber ?? '',
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
      speciesCreated: speciesCreated,
      colorsCreated: colorsCreated,
      cagesCreated: cagesCreated,
      results: results,
    );

    // Reload birds in main cubit
    await birdBreederCubit.reloadBirds();

    emit(CsvBirdImportState.completed(summary: summary));
  }

  /// Sorts rows so that parents (fatherRingNumber, motherRingNumber) are
  /// imported before their children. Uses topological sorting.
  List<CsvBirdRow> _sortRowsByDependencies(List<CsvBirdRow> rows) {
    // Build a map of ringNumber -> row (for rows in CSV)
    final ringToRow = <String, CsvBirdRow>{};
    for (final row in rows) {
      if (row.ringNumber != null && row.ringNumber!.isNotEmpty) {
        ringToRow[row.ringNumber!.toLowerCase()] = row;
      }
    }

    // Set of ring numbers already existing in database
    final existingRings = _existingRingNumbers;

    // Build dependency graph: row -> list of parent rows it depends on
    final dependencies = <CsvBirdRow, Set<CsvBirdRow>>{};
    for (final row in rows) {
      final deps = <CsvBirdRow>{};

      // Check father dependency
      if (row.fatherRingNumber != null && row.fatherRingNumber!.isNotEmpty) {
        final fatherKey = row.fatherRingNumber!.toLowerCase();
        // Only add dependency if father is in CSV (not already in database)
        if (ringToRow.containsKey(fatherKey) &&
            !existingRings.contains(fatherKey)) {
          deps.add(ringToRow[fatherKey]!);
        }
      }

      // Check mother dependency
      if (row.motherRingNumber != null && row.motherRingNumber!.isNotEmpty) {
        final motherKey = row.motherRingNumber!.toLowerCase();
        // Only add dependency if mother is in CSV (not already in database)
        if (ringToRow.containsKey(motherKey) &&
            !existingRings.contains(motherKey)) {
          deps.add(ringToRow[motherKey]!);
        }
      }

      dependencies[row] = deps;
    }

    // Topological sort using Kahn's algorithm
    final sorted = <CsvBirdRow>[];
    final remaining = rows.toSet();
    final processed = <CsvBirdRow>{};

    while (remaining.isNotEmpty) {
      // Find rows with no remaining dependencies
      final ready = remaining.where((row) {
        final deps = dependencies[row] ?? {};
        return deps.every(processed.contains);
      }).toList();

      if (ready.isEmpty) {
        // Circular dependency - just add remaining rows in original order
        sorted.addAll(remaining.where((r) => !processed.contains(r)));
        break;
      }

      // Sort ready rows by their original row index to maintain stable order
      ready.sort((a, b) => a.rowIndex.compareTo(b.rowIndex));

      for (final row in ready) {
        sorted.add(row);
        processed.add(row);
        remaining.remove(row);
      }
    }

    return sorted;
  }

  void _initializeCaches() {
    _speciesCache.clear();
    _colorCache.clear();
    _cageCache.clear();
    _contactCache.clear();
    _existingRingNumbers.clear();
    _ringNumberToIdCache.clear();

    final resources = birdBreederCubit.state.birdBreederResources;

    // Cache existing ring numbers to prevent duplicates and for parent lookups
    for (final bird in resources.birds) {
      if (bird.ringNumber != null && bird.ringNumber!.isNotEmpty) {
        final ringKey = bird.ringNumber!.toLowerCase();
        _existingRingNumbers.add(ringKey);
        _ringNumberToIdCache[ringKey] = bird.id;
      }
    }

    for (final species in resources.species) {
      if (species.name != null) {
        _speciesCache[species.name!.toLowerCase()] = species.id;
      }
    }

    for (final color in resources.colors) {
      if (color.name != null) {
        _colorCache[color.name!.toLowerCase()] = color.id;
      }
    }

    for (final cage in resources.cages) {
      if (cage.name != null) {
        _cageCache[cage.name!.toLowerCase()] = cage.id;
      }
    }

    // Cache contacts by their number for breeder lookup
    for (final contact in resources.contacts) {
      if (contact.number != null && contact.number!.isNotEmpty) {
        _contactCache[contact.number!.toLowerCase()] = contact.id;
      }
    }
  }

  Future<CsvImportResult> _importBird(CsvBirdRow row) async {
    var speciesCreated = false;
    var colorCreated = false;
    var cageCreated = false;

    // Check if ring number already exists
    final ringNumberKey = row.ringNumber?.toLowerCase() ?? '';
    if (ringNumberKey.isNotEmpty &&
        _existingRingNumbers.contains(ringNumberKey)) {
      return CsvImportResult(
        rowIndex: row.rowIndex,
        ringNumber: row.ringNumber ?? '',
        skipped: true,
        errorMessage: t.csv_import.errors.ring_number_exists,
      );
    }

    // Resolve or create species
    String? speciesId;
    if (row.speciesName != null && row.speciesName!.isNotEmpty) {
      final speciesKey = row.speciesName!.toLowerCase();
      if (_speciesCache.containsKey(speciesKey)) {
        speciesId = _speciesCache[speciesKey];
      } else {
        final newSpecies = await birdBreederCubit.addSpecies(
          Species.create(name: row.speciesName),
        );
        if (newSpecies != null) {
          speciesId = newSpecies.id;
          _speciesCache[speciesKey] = newSpecies.id;
          speciesCreated = true;
        }
      }
    }

    // Resolve or create color
    String? colorId;
    if (row.colorName != null && row.colorName!.isNotEmpty) {
      final colorKey = row.colorName!.toLowerCase();
      if (_colorCache.containsKey(colorKey)) {
        colorId = _colorCache[colorKey];
      } else {
        final newColor = await birdBreederCubit.addColor(
          BirdColor.create(name: row.colorName),
        );
        if (newColor != null) {
          colorId = newColor.id;
          _colorCache[colorKey] = newColor.id;
          colorCreated = true;
        }
      }
    }

    // Resolve or create cage
    String? cageId;
    if (row.cageName != null && row.cageName!.isNotEmpty) {
      final cageKey = row.cageName!.toLowerCase();
      if (_cageCache.containsKey(cageKey)) {
        cageId = _cageCache[cageKey];
      } else {
        final newCage = await birdBreederCubit.addCage(
          Cage.create(name: row.cageName),
        );
        if (newCage != null) {
          cageId = newCage.id;
          _cageCache[cageKey] = newCage.id;
          cageCreated = true;
        }
      }
    }

    // Resolve father by ring number
    String? fatherId;
    if (row.fatherRingNumber != null && row.fatherRingNumber!.isNotEmpty) {
      final fatherKey = row.fatherRingNumber!.toLowerCase();
      fatherId = _ringNumberToIdCache[fatherKey];
    }

    // Resolve mother by ring number
    String? motherId;
    if (row.motherRingNumber != null && row.motherRingNumber!.isNotEmpty) {
      final motherKey = row.motherRingNumber!.toLowerCase();
      motherId = _ringNumberToIdCache[motherKey];
    }

    // Resolve breeder by contact number
    String? breederId;
    if (row.breederNumber != null && row.breederNumber!.isNotEmpty) {
      final breederKey = row.breederNumber!.toLowerCase();
      breederId = _contactCache[breederKey];
    }

    // Resolve owner by contact number
    String? ownerId;
    if (row.ownerNumber != null && row.ownerNumber!.isNotEmpty) {
      final ownerKey = row.ownerNumber!.toLowerCase();
      ownerId = _contactCache[ownerKey];
    }

    // Create the bird
    final bird = Bird.create().copyWith(
      ringNumber: row.ringNumber,
      speciesId: speciesId,
      colorId: colorId,
      cageId: cageId,
      sex: row.sex,
      bornAt: row.bornAt,
      diedAt: row.diedAt,
      boughtAt: row.boughtAt,
      boughtPrice: row.boughtPrice,
      fatherId: fatherId,
      motherId: motherId,
      breederId: breederId,
      ownerId: ownerId,
      notes: row.notes,
    );

    final createdBird = await birdBreederCubit.addBird(bird);

    if (createdBird == null) {
      return CsvImportResult(
        rowIndex: row.rowIndex,
        ringNumber: row.ringNumber ?? '',
        errorMessage: t.csv_import.errors.could_not_create_bird,
        speciesCreated: speciesCreated,
        colorCreated: colorCreated,
        cageCreated: cageCreated,
      );
    }

    // Add ring number to cache to prevent duplicates within the same import
    // and allow parent references for later rows
    if (row.ringNumber != null && row.ringNumber!.isNotEmpty) {
      final ringKey = row.ringNumber!.toLowerCase();
      _existingRingNumbers.add(ringKey);
      _ringNumberToIdCache[ringKey] = createdBird.id;
    }

    return CsvImportResult(
      rowIndex: row.rowIndex,
      ringNumber: row.ringNumber ?? '',
      success: true,
      createdBirdId: createdBird.id,
      speciesCreated: speciesCreated,
      colorCreated: colorCreated,
      cageCreated: cageCreated,
    );
  }

  void reset() {
    _speciesCache.clear();
    _colorCache.clear();
    _cageCache.clear();
    _contactCache.clear();
    _existingRingNumbers.clear();
    _ringNumberToIdCache.clear();
    emit(const CsvBirdImportState.initial());
  }
}
