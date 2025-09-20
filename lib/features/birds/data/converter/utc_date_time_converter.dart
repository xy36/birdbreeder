import 'package:freezed_annotation/freezed_annotation.dart';

/// Converts DateTime? <-> ISO8601 (UTC). Ensures values are always stored as UTC.
class UtcDateTimeConverter implements JsonConverter<DateTime?, String?> {
  const UtcDateTimeConverter();

  @override
  DateTime? fromJson(String? json) {
    if (json == null || json.isEmpty) return null;

    return DateTime.tryParse(json);

    final dt = DateTime.tryParse(json);
    if (dt == null) return null;
    return dt.isUtc ? dt.toLocal() : dt;
  }

  @override
  String? toJson(DateTime? object) {
    if (object == null) return null;
    //final utc = object.isUtc ? object : object.toUtc();
    return object.toIso8601String(); // will include 'Z'
  }
}
