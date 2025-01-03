part of 'cages_cubit.dart';

@freezed
class CagesState with _$CagesState {
  const factory CagesState.initial() = Initial;
  const factory CagesState.loading() = Loading;
  const factory CagesState.errorScreen() = ErrorScreen;
  const factory CagesState.loaded({required List<Cage> cages}) = Loaded;
}
