part of 'bird_bloc.dart';

@freezed
class BirdEvent with _$BirdEvent {
  const factory BirdEvent.load() = BirdLoad;
  const factory BirdEvent.save() = BirdSave;
  const factory BirdEvent.toggleEditAndShow() = BirdEdit;
  const factory BirdEvent.delete() = BirdDelete;
  const factory BirdEvent.duplicate() = BirdDuplicate;
  const factory BirdEvent.change({required Bird bird}) = BirdChange;
}
