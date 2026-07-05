part of 'cloud_backup_cubit.dart';

@freezed
abstract class CloudBackupState with _$CloudBackupState {
  const factory CloudBackupState({
    @Default(true) bool loading,
    @Default(false) bool supported,
    @Default(false) bool enabled,
    @Default(false) bool available,
    CloudUnavailableReason? unavailableReason,
    String? locationName,
    DateTime? lastSyncAt,
    @Default(false) bool syncing,
    @Default(AutoBackupInterval.daily) AutoBackupInterval interval,
  }) = _CloudBackupState;
}
