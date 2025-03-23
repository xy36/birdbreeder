import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_state.freezed.dart';

@freezed
abstract class ColorState with _$ColorState {
  const factory ColorState.loading() = ColorLoading;
  const factory ColorState.loaded() = ColorLoaded;
  const factory ColorState.errorScreen() = ColorErrorScreen;
}
