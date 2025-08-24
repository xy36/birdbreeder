import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_breeder_cubit_event.freezed.dart';

@freezed
class BirdBreederCubitEvent with _$BirdBreederCubitEvent {
  const factory BirdBreederCubitEvent.updateFailed() =
      BirdbreederEventUpdateFailed;
  const factory BirdBreederCubitEvent.addFailed() = BirdbreederEventAddFailed;
  const factory BirdBreederCubitEvent.duplicateFailed() =
      BirdbreederEventDuplicateFailed;
  const factory BirdBreederCubitEvent.deleteFailed() =
      BirdbreederEventDeleteFailed;
}
