part of 'bird_bloc.dart';

@freezed
class BirdState with _$BirdState {
  const factory BirdState.initial({
    required Bird bird,
    required bool isEdit,
  }) = BirdInitial;
  const factory BirdState.loading({
    required Bird bird,
    required bool isEdit,
  }) = BirdLoading;
  const factory BirdState.loaded({
    required Bird bird,
    required bool isEdit,
  }) = BirdLoaded;
  const factory BirdState.error({
    required Bird bird,
    required bool isEdit,
  }) = BirdError;
  const factory BirdState.saved({
    required Bird bird,
    required bool isEdit,
  }) = BirdSaved;
  const factory BirdState.deleted({
    required Bird bird,
    required bool isEdit,
  }) = BirdDeleted;

  @override
  String toString() {
    return bird.ringnumber.toString();
  }
}
