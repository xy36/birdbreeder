import 'package:freezed_annotation/freezed_annotation.dart';

/// Converts DateTime? <-> ISO8601 (UTC). Ensures values are always stored as UTC.
class UtcDateTimeConverter implements JsonConverter<DateTime?, String?> {
  const UtcDateTimeConverter();

  @override
  DateTime? fromJson(String? json) {
    if (json == null || json.isEmpty) return null;

    return DateTime.tryParse(json);
  }

  @override
  String? toJson(DateTime? object) {
    if (object == null) return null;
    return object.toIso8601String(); // will include 'Z'
  }
}
