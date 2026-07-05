import 'package:birdbreeder/services/backup/cloud/cloud_backup_target.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cloud_backup_cubit_event.freezed.dart';

@freezed
class CloudBackupCubitEvent with _$CloudBackupCubitEvent {
  const factory CloudBackupCubitEvent.locationChosen(String name) =
      CloudLocationChosen;
  const factory CloudBackupCubitEvent.locationFailed() = CloudLocationFailed;
  const factory CloudBackupCubitEvent.syncSucceeded() = CloudSyncSucceeded;
  const factory CloudBackupCubitEvent.syncFailed(String message) =
      CloudSyncFailed;
  const factory CloudBackupCubitEvent.unavailable(
    CloudUnavailableReason reason,
  ) = CloudUnavailable;
}
