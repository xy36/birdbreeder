part of 'cages_cubit.dart';

@freezed
class CagesState with _$CagesState {
  const factory CagesState.initial() = CagesInitial;
  const factory CagesState.loading() = CagesLoading;
  const factory CagesState.loaded({required List<Cage> cages}) = CagesLoaded;
  const factory CagesState.errorScreen() = CagesErrorScreen;
}
