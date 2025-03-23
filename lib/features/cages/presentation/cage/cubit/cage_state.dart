part of 'cage_cubit.dart';

@freezed
class CageState with _$CageState {
  const factory CageState.loading() = CageLoading;
  const factory CageState.loaded() = CageLoaded;
}
