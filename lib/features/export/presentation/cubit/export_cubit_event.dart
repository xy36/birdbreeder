import 'package:freezed_annotation/freezed_annotation.dart';

part 'export_cubit_event.freezed.dart';

@freezed
class ExportCubitEvent with _$ExportCubitEvent {
  const factory ExportCubitEvent.succeeded(String fileName) = ExportSucceeded;
  const factory ExportCubitEvent.failed(String message) = ExportFailed;
  const factory ExportCubitEvent.empty() = ExportEmpty;
}
