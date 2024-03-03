part of 'birds_bloc.dart';

enum BirdsStatus {
  initial,
  loading,
  success,
  failure,
  deleted,
  saved;

  bool get isInitial => this == BirdsStatus.initial;
  bool get isLoading => this == BirdsStatus.loading;
  bool get isSuccess => this == BirdsStatus.success;
  bool get isFailure => this == BirdsStatus.failure;
}

@freezed
class BirdsState with _$BirdsState {
  const factory BirdsState({
    @Default(BirdsStatus.initial) BirdsStatus status,
    required List<Bird> birds,
    Bird? selectedBird,
  }) = _BirdsState;
}
