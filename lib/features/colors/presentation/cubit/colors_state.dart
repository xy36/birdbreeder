part of 'colors_cubit.dart';

@freezed
abstract class ColorsState with _$ColorsState {
  const factory ColorsState.initial() = Initial;
  const factory ColorsState.loading() = Loading;
  const factory ColorsState.loaded({required List<BirdColor> colors}) = Loaded;
  const factory ColorsState.errorScreen() = ErrorScreen;
}
