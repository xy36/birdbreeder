import 'package:freezed_annotation/freezed_annotation.dart';

part 'backup_cubit_event.freezed.dart';

@freezed
class BackupCubitEvent with _$BackupCubitEvent {
  const factory BackupCubitEvent.created() = BackupCreated;
  const factory BackupCubitEvent.createFailed(String message) =
      BackupCreateFailed;
  const factory BackupCubitEvent.shareFailed(String message) =
      BackupShareFailed;
  const factory BackupCubitEvent.restoreFailed(String message) =
      BackupRestoreFailed;
}
