part of 'bird_bloc.dart';

enum BirdStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == BirdStatus.initial;
  bool get isLoading => this == BirdStatus.loading;
  bool get isSuccess => this == BirdStatus.success;
  bool get isFailure => this == BirdStatus.failure;
}

@freezed
class BirdState with _$BirdState {
  const factory BirdState({
    @Default(BirdStatus.initial) BirdStatus status,
    required Bird bird,
    @Default(false) bool isEditMode,
  }) = _BirdState;
}
