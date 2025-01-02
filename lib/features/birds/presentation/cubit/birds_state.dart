part of 'birds_cubit.dart';

@freezed
class BirdsState with _$BirdsState {
  const factory BirdsState.initial() = BirdsInitial;
  const factory BirdsState.loading() = BirdsLoading;
  const factory BirdsState.loaded({required List<Bird> birds}) = BirdsLoaded;
  const factory BirdsState.error() = BirdsError;

  const BirdsState._();

  @override
  String toString() {
    return when(
      initial: () => 'BirdsState.initial()',
      loading: () => 'BirdsState.loading()',
      loaded: (birds) => 'BirdsState.loaded(birds: ${birds.length})',
      error: () => 'BirdsState.error()',
    );
  }
}
