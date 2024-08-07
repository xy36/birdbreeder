import 'package:json_annotation/json_annotation.dart';

class StringNullEmptyConverter implements JsonConverter<String?, String?> {
  const StringNullEmptyConverter();

  @override
  String? fromJson(String? json) {
    if (json == null || json.isEmpty) {
      return null;
    }
    return json;
  }

  @override
  String? toJson(String? object) {
    return object;
  }
}
