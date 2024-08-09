part of 'birds_cubit.dart';

@freezed
class BirdsState with _$BirdsState {
  const factory BirdsState.initial() = BirdsInitial;
  const factory BirdsState.loading() = BirdsLoading;
  const factory BirdsState.loaded({required List<Bird> birds}) = BirdsLoaded;
  const factory BirdsState.error() = BirdsError;
}
