import 'package:freezed_annotation/freezed_annotation.dart';

part 'cages_cubit_event.freezed.dart';

@freezed
class CagesCubitEvent with _$CagesCubitEvent {
  const factory CagesCubitEvent.updateFailed() = CagesEventUpdateFailed;
  const factory CagesCubitEvent.createFailed() = CagesEventCreateFailed;
  const factory CagesCubitEvent.deleteFailed() = CagesEventDeleteFailed;
}
