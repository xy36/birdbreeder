import 'package:freezed_annotation/freezed_annotation.dart';

part 'colors_cubit_event.freezed.dart';

@freezed
class ColorsCubitEvent with _$ColorsCubitEvent {
  const factory ColorsCubitEvent.updateFailed() = ColorsEventUpdateFailed;
  const factory ColorsCubitEvent.createFailed() = ColorsEventCreateFailed;
  const factory ColorsCubitEvent.deleteFailed() = ColorsEventDeleteFailed;
}
