part of 'bird_bloc.dart';

enum BirdStatus {
  initial,
  loading,
  success,
  failure,
  deleted,
  saved;

  bool get isInitial => this == BirdStatus.initial;
  bool get isLoading => this == BirdStatus.loading;
  bool get isSuccess => this == BirdStatus.success;
  bool get isFailure => this == BirdStatus.failure;
  bool get isDeleted => this == BirdStatus.deleted;
  bool get isSaved => this == BirdStatus.saved;
}

@freezed
class BirdState with _$BirdState {
  const factory BirdState({
    @Default(BirdStatus.initial) BirdStatus status,
    required Bird bird,
  }) = _BirdState;
}
