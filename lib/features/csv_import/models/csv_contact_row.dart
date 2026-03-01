import 'package:freezed_annotation/freezed_annotation.dart';

part 'csv_contact_row.freezed.dart';

/// Represents a single contact row from the CSV file before it's processed
@freezed
abstract class CsvContactRow with _$CsvContactRow {
  const factory CsvContactRow({
    required int rowIndex,
    String? number,
    String? firstName,
    String? lastName,
    String? title,
    String? phone,
    String? cellPhoneNumber,
    String? email,
    String? address,
    String? city,
    String? postalCode,
    String? country,
    String? website,
    @Default(false) bool hasError,
    String? errorMessage,
  }) = _CsvContactRow;

  const CsvContactRow._();

  /// Factory to create from a CSV row map
  factory CsvContactRow.fromCsvMap(Map<String, dynamic> map, int rowIndex) {
    try {
      return CsvContactRow(
        rowIndex: rowIndex,
        number: _getString(map, ['number', 'nummer', 'kundennummer', 'id']),
        firstName: _getString(map, [
          'firstname',
          'first_name',
          'vorname',
          'given_name',
        ]),
        lastName: _getString(map, [
          'lastname',
          'last_name',
          'nachname',
          'familienname',
          'surname',
        ]),
        title: _getString(map, [
          'title',
          'anrede',
          'salutation',
        ]),
        phone: _getString(map, [
          'phone',
          'telefon',
          'telephone',
          'tel',
        ]),
        cellPhoneNumber: _getString(map, [
          'cellphone',
          'cell_phone',
          'cellphonenumber',
          'cell_phone_number',
          'handy',
          'mobile',
          'mobil',
          'mobilnummer',
          'mobiltelefon',
        ]),
        email: _getString(map, ['email', 'e-mail', 'mail']),
        address: _getString(map, [
          'address',
          'adresse',
          'strasse',
          'street',
          'straße',
        ]),
        city: _getString(map, ['city', 'stadt', 'ort']),
        postalCode: _getString(map, [
          'postalcode',
          'postal_code',
          'plz',
          'zip',
          'zipcode',
          'zip_code',
          'postleitzahl',
        ]),
        country: _getString(map, ['country', 'land']),
        website: _getString(map, [
          'website',
          'webseite',
          'homepage',
          'url',
          'web',
        ]),
      );
    } on Exception catch (e) {
      return CsvContactRow(
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

  /// Returns true if the row has minimum required data
  bool get isValid => !hasError && lastName != null && lastName!.isNotEmpty;

  /// Returns a display name for the contact
  String get displayName {
    final parts = <String>[];
    if (firstName != null && firstName!.isNotEmpty) {
      parts.add(firstName!);
    }
    if (lastName != null && lastName!.isNotEmpty) {
      parts.add(lastName!);
    }
    return parts.isNotEmpty ? parts.join(' ') : 'Unbenannt';
  }
}
