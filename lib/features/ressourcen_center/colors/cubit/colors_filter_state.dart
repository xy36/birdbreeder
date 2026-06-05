import 'package:freezed_annotation/freezed_annotation.dart';

part 'colors_filter_state.freezed.dart';

enum ColorSortField { name, created, hex }

@freezed
abstract class ColorsFilterState with _$ColorsFilterState {
  const factory ColorsFilterState({
    @Default('') String query,
    @Default(ColorSortField.name) ColorSortField sortField,
    @Default(true) bool sortAsc,
  }) = _ColorsFilterState;
}
