import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_search.freezed.dart';

@freezed
class ContactSearch with _$ContactSearch {
  const factory ContactSearch({
    @Default(false) bool isActive,
    @Default('') String query,
  }) = _ContactSearch;
}
