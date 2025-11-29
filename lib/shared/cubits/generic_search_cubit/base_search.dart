import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_search.freezed.dart';

@freezed
abstract class BaseSearch with _$BaseSearch {
  const factory BaseSearch({
    @Default(false) bool isActive,
    @Default('') String query,
  }) = _BaseSearch;
}
