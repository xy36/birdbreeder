import 'package:freezed_annotation/freezed_annotation.dart';

part 'cage_cubit_event.freezed.dart';

@freezed
class CageCubitEvent with _$CageCubitEvent {
  const factory CageCubitEvent.updateFailed() = CageEventUpdateFailed;
  const factory CageCubitEvent.createFailed() = CageEventCreateFailed;
  const factory CageCubitEvent.deleteFailed() = CageEventDeleteFailed;
}
