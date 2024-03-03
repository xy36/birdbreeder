part of 'birds_bloc.dart';

@freezed
class BirdsEvent with _$BirdsEvent {
  const factory BirdsEvent.load() = _Load;
  const factory BirdsEvent.reload() = _Reload;
  const factory BirdsEvent.selectBird({required Bird bird}) = _SelectBird;
}
