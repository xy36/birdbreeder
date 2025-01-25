part of 'colors_cubit.dart';

@freezed
abstract class ColorsState with _$ColorsState {
  const factory ColorsState.initial() = ColorsInitial;
  const factory ColorsState.loading() = ColorsLoading;
  const factory ColorsState.loaded({required List<BirdColor> colors}) =
      ColorsLoaded;
  const factory ColorsState.errorScreen() = ColorsErrorScreen;
}
