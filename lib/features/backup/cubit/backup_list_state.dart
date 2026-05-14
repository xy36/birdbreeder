part of 'backup_list_cubit.dart';

@freezed
abstract class BackupListState with _$BackupListState {
  const factory BackupListState.loading() = BackupListLoading;
  const factory BackupListState.loaded({
    required List<File> snapshots,
  }) = BackupListLoaded;
}

extension BackupListStateX on BackupListState {
  bool get isLoading => this is BackupListLoading;

  List<File> get snapshots => switch (this) {
        BackupListLoaded(:final snapshots) => snapshots,
        _ => const [],
      };
}
