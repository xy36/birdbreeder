part of 'bird_bloc.dart';

@freezed
class BirdState with _$BirdState {
  const factory BirdState.initial({
    required Bird bird,
    required bool isEdit,
    required BirdResources birdResources,
  }) = BirdInitial;
  const factory BirdState.loading({
    required Bird bird,
    required bool isEdit,
    required BirdResources birdResources,
  }) = BirdLoading;
  const factory BirdState.loaded({
    required Bird bird,
    required bool isEdit,
    required BirdResources birdResources,
  }) = BirdLoaded;
  const factory BirdState.error({
    required Bird bird,
    required bool isEdit,
    required BirdResources birdResources,
  }) = BirdError;
  const factory BirdState.saved({
    required Bird bird,
    required bool isEdit,
    required BirdResources birdResources,
  }) = BirdSaved;
  const factory BirdState.deleted({
    required Bird bird,
    required bool isEdit,
    required BirdResources birdResources,
  }) = BirdDeleted;

  @override
  String toString() {
    return bird.ringnumber.toString();
  }
}
