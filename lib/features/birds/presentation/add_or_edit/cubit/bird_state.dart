part of 'bird_cubit.dart';

@freezed
class BirdState with _$BirdState {
  const factory BirdState.initial({
    required Bird bird,
    required BirdMode mode,
    required BirdResources birdResources,
  }) = BirdInitial;
  const factory BirdState.loading({
    required Bird bird,
    required BirdMode mode,
    required BirdResources birdResources,
  }) = BirdLoading;
  const factory BirdState.loaded({
    required Bird bird,
    required BirdMode mode,
    required BirdResources birdResources,
  }) = BirdLoaded;
}
