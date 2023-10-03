part of 'add_bird_bloc.dart';

@freezed
class AddBirdEvent with _$AddBirdEvent {
  const factory AddBirdEvent.started() = _Started;
}