import 'package:freezed_annotation/freezed_annotation.dart';

part 'backup_list_cubit_event.freezed.dart';

@freezed
class BackupListCubitEvent with _$BackupListCubitEvent {
  const factory BackupListCubitEvent.created() = BackupListCreated;
  const factory BackupListCubitEvent.createFailed(String message) =
      BackupListCreateFailed;
  const factory BackupListCubitEvent.shareFailed(String message) =
      BackupListShareFailed;
  const factory BackupListCubitEvent.deleteFailed(String message) =
      BackupListDeleteFailed;
  const factory BackupListCubitEvent.restoreFailed(String message) =
      BackupListRestoreFailed;
}
