import 'package:freezed_annotation/freezed_annotation.dart';

part 'species_cubit_event.freezed.dart';

@freezed
class SpeciesCubitEvent with _$SpeciesCubitEvent {
  const factory SpeciesCubitEvent.updateFailed() = SpeciesEventUpdateFailed;
  const factory SpeciesCubitEvent.createFailed() = SpeciesEventCreateFailed;
  const factory SpeciesCubitEvent.deleteFailed() = SpeciesEventDeleteFailed;
}
