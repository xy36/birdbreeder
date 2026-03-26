import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'csv_bird_row.freezed.dart';

/// Represents a single row from the CSV file before it's processed
@freezed
abstract class CsvBirdRow with _$CsvBirdRow {
  const factory CsvBirdRow({
    required int rowIndex,
    String? ringNumber,
    String? speciesName,
    String? colorName,
    String? cageName,
    @Default(Sex.unknown) Sex sex,
    DateTime? bornAt,
    DateTime? diedAt,
    DateTime? boughtAt,
    double? boughtPrice,
    String? fatherRingNumber,
    String? motherRingNumber,
    String? breederNumber,
    String? ownerNumber,
    String? notes,
    @Default(false) bool hasError,
    String? errorMessage,
  }) = _CsvBirdRow;

  const CsvBirdRow._();

  /// Factory to create from a CSV row map
  factory CsvBirdRow.fromCsvMap(Map<String, dynamic> map, int rowIndex) {
    try {
      return CsvBirdRow(
        rowIndex: rowIndex,
        ringNumber: _getString(
          map,
          ['ringnumber', 'ring_number', 'ringnummer', 'ring'],
        ),
        speciesName: _getString(map, ['species', 'art', 'vogelart']),
        colorName: _getString(map, ['color', 'farbe', 'colour']),
        cageName: _getString(map, ['cage', 'voliere', 'käfig', 'kaefig']),
        sex: _parseSex(map),
        bornAt: _parseDate(map, [
          'born_at',
          'bornat',
          'geboren',
          'geburtsdatum',
          'birth_date',
          'birthdate',
        ]),
        diedAt: _parseDate(map, [
          'died_at',
          'diedat',
          'verstorben',
          'gestorben',
          'todesdatum',
          'death_date',
        ]),
        boughtAt: _parseDate(map, [
          'bought_at',
          'boughtat',
          'gekauft',
          'kaufdatum',
          'purchase_date',
        ]),
        boughtPrice: _parseDouble(map, [
          'bought_price',
          'boughtprice',
          'kaufpreis',
          'preis',
          'price',
          'purchase_price',
        ]),
        fatherRingNumber: _getString(map, [
          'father',
          'father_ringnumber',
          'father_ring',
          'vater',
          'vater_ringnummer',
        ]),
        motherRingNumber: _getString(map, [
          'mother',
          'mother_ringnumber',
          'mother_ring',
          'mutter',
          'mutter_ringnummer',
        ]),
        breederNumber: _getString(map, [
          'breeder',
          'breeder_number',
          'zuechter',
          'züchter',
          'zuechternummer',
          'züchternummer',
          'züchter-nummer',
          'breeder_id',
        ]),
        ownerNumber: _getString(map, [
          'owner',
          'owner_number',
          'besitzer',
          'besitzernummer',
          'besitzer_nummer',
          'besitzer-nummer',
          'eigentuemer',
          'eigentümer',
          'owner_id',
        ]),
        notes: _getString(
          map,
          [
            'notes',
            'notizen',
            'bemerkungen',
            'comment',
            'kommentar',
            'remarks',
          ],
        ),
      );
    } on Exception catch (e) {
      return CsvBirdRow(
        rowIndex: rowIndex,
        hasError: true,
        errorMessage: e.toString(),
      );
    }
  }

  static String? _getString(Map<String, dynamic> map, List<String> keys) {
    for (final key in keys) {
      final value = map[key.toLowerCase()];
      if (value != null && value.toString().trim().isNotEmpty) {
        return value.toString().trim();
      }
    }
    return null;
  }

  static Sex _parseSex(Map<String, dynamic> map) {
    final value = _getString(map, ['sex', 'geschlecht', 'gender']);
    if (value == null) return Sex.unknown;

    final lower = value.toLowerCase();
    if ([
      'male',
      'männlich',
      'maennlich',
      'm',
      '1',
      'hahn',
    ].contains(lower)) {
      return Sex.male;
    } else if (['female', 'weiblich', 'w', 'f', '0', 'hen', 'henne']
        .contains(lower)) {
      return Sex.female;
    }
    return Sex.unknown;
  }

  static DateTime? _parseDate(Map<String, dynamic> map, List<String> keys) {
    final value = _getString(map, keys);
    if (value == null) return null;

    // Try various date formats (allow 1 or 2 digits for day/month)
    final formats = [
      RegExp(r'^(\d{4})-(\d{1,2})-(\d{1,2})$'), // yyyy-M-d or yyyy-MM-dd
      RegExp(r'^(\d{1,2})\.(\d{1,2})\.(\d{4})$'), // d.M.yyyy or dd.MM.yyyy
      RegExp(r'^(\d{1,2})/(\d{1,2})/(\d{4})$'), // d/M/yyyy or dd/MM/yyyy
    ];

    // yyyy-M-d or yyyy-MM-dd
    var match = formats[0].firstMatch(value);
    if (match != null) {
      final year = int.parse(match.group(1)!);
      final month = int.parse(match.group(2)!);
      final day = int.parse(match.group(3)!);
      return DateTime(year, month, day);
    }

    // d.M.yyyy or dd.MM.yyyy
    match = formats[1].firstMatch(value);
    if (match != null) {
      final day = int.parse(match.group(1)!);
      final month = int.parse(match.group(2)!);
      final year = int.parse(match.group(3)!);
      return DateTime(year, month, day);
    }

    // d/M/yyyy or dd/MM/yyyy
    match = formats[2].firstMatch(value);
    if (match != null) {
      final day = int.parse(match.group(1)!);
      final month = int.parse(match.group(2)!);
      final year = int.parse(match.group(3)!);
      return DateTime(year, month, day);
    }

    return null;
  }

  static double? _parseDouble(Map<String, dynamic> map, List<String> keys) {
    final value = _getString(map, keys);
    if (value == null) return null;

    // Replace comma with dot for German number format
    final normalized = value.replaceAll(',', '.');
    return double.tryParse(normalized);
  }

  bool get isValid => !hasError && ringNumber != null && ringNumber!.isNotEmpty;
}
