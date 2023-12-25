part of 'bird_bloc.dart';

@freezed
class BirdEvent with _$BirdEvent {
  const factory BirdEvent.changed({required Bird bird}) = _Changed;
  const factory BirdEvent.save() = _Save;
  const factory BirdEvent.load() = _Load;
  const factory BirdEvent.setEditMode({required bool isEditMode}) =
      _SetEditMode;
}
