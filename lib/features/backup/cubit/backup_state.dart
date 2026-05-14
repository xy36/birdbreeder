part of 'backup_cubit.dart';

@freezed
abstract class BackupState with _$BackupState {
  const factory BackupState.initial() = BackupInitial;
  const factory BackupState.loaded({
    File? latestSnapshot,
    int? daysSinceExternal,
  }) = BackupLoaded;
}

extension BackupStateX on BackupState {
  File? get latestSnapshot => switch (this) {
        BackupLoaded(:final latestSnapshot) => latestSnapshot,
        _ => null,
      };

  int? get daysSinceExternal => switch (this) {
        BackupLoaded(:final daysSinceExternal) => daysSinceExternal,
        _ => null,
      };

  bool get isLoading => this is BackupInitial;
}
