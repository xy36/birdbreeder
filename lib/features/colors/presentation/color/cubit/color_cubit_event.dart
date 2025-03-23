import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_cubit_event.freezed.dart';

@freezed
class ColorCubitEvent with _$ColorCubitEvent {
  const factory ColorCubitEvent.updateFailed() = ColorEventUpdateFailed;
  const factory ColorCubitEvent.createFailed() = ColorEventCreateFailed;
  const factory ColorCubitEvent.deleteFailed() = ColorEventDeleteFailed;
}
