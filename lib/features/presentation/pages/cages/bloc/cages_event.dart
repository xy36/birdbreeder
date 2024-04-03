part of 'cages_bloc.dart';

@freezed
class CagesEvent with _$CagesEvent {
  const factory CagesEvent.load() = Load;
  const factory CagesEvent.addCage(Cage cage) = AddCage;
  const factory CagesEvent.deleteCage(Cage cage) = DeleteCage;
  const factory CagesEvent.editCage(Cage cage) = EditCage;
}
