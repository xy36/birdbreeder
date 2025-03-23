import 'package:freezed_annotation/freezed_annotation.dart';

part 'breeding_pair_cubit_event.freezed.dart';

@freezed
class BreedingPairCubitEvent with _$BreedingPairCubitEvent {
  const factory BreedingPairCubitEvent.updateFailed() =
      BreedingPairCubitUpdateFailed;
  const factory BreedingPairCubitEvent.createFailed() =
      BreedingPairCubitCreateFailed;
  const factory BreedingPairCubitEvent.deleteFailed() =
      BreedingPairCubitDeleteFailed;
}
