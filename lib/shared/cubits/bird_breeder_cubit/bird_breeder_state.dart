part of 'bird_breeder_cubit.dart';

@freezed
class BirdBreederState with _$BirdBreederState {
  const factory BirdBreederState.initial({
    required BirdBreederResources birdBreederResources,
  }) = BirdBreederInitial;
  const factory BirdBreederState.loading({
    required BirdBreederResources birdBreederResources,
  }) = BirdBreederLoading;
  const factory BirdBreederState.loaded({
    required BirdBreederResources birdBreederResources,
  }) = BirdBreederLoaded;
}
