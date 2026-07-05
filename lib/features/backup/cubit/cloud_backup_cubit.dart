import 'dart:async';

import 'package:birdbreeder/features/backup/cubit/cloud_backup_cubit_event.dart';
import 'package:birdbreeder/services/backup/backup_service.dart';
import 'package:birdbreeder/services/backup/cloud/cloud_backup_manager.dart';
import 'package:birdbreeder/services/backup/cloud/cloud_backup_target.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cloud_backup_cubit.freezed.dart';
part 'cloud_backup_state.dart';

/// Drives the cloud-backup settings section: enable toggle, location picking
/// and manual "sync now".
class CloudBackupCubit extends Cubit<CloudBackupState>
    with BlocPresentationMixin<CloudBackupState, CloudBackupCubitEvent> {
  CloudBackupCubit() : super(const CloudBackupState()) {
    unawaited(refresh());
  }

  Future<void> refresh() async {
    if (!CloudBackupManager.isSupported) {
      emit(const CloudBackupState(loading: false));
      return;
    }
    final enabled = await CloudBackupManager.isEnabled();
    final availability = await CloudBackupManager.availability();
    final name = await CloudBackupManager.locationName();
    final lastSync = await CloudBackupManager.lastSyncAt();
    final interval = await BackupService.getAutoInterval();
    emit(
      CloudBackupState(
        loading: false,
        supported: true,
        enabled: enabled,
        available: availability.available,
        unavailableReason: availability.reason,
        locationName: name,
        lastSyncAt: lastSync,
        interval: interval,
      ),
    );
  }

  Future<void> setInterval(AutoBackupInterval interval) async {
    await BackupService.setAutoInterval(interval);
    emit(state.copyWith(interval: interval));
  }

  Future<void> toggle(bool value) async {
    await CloudBackupManager.setEnabled(value);
    await refresh();
    // No error is surfaced here when the cloud is not ready yet: the UI reads
    // the refreshed state and, if a folder still needs picking (Android
    // noLocation), prompts the user to choose one instead.
  }

  /// Whether enabling just now left the cloud unusable only because no folder
  /// has been chosen (Android SAF) — the case where the UI should offer to pick
  /// one rather than show an error.
  bool get needsLocation =>
      state.enabled &&
      !state.available &&
      state.unavailableReason == CloudUnavailableReason.noLocation;

  Future<void> chooseLocation() async {
    final location = await CloudBackupManager.chooseLocation();
    if (location == null) {
      emitPresentation(const CloudBackupCubitEvent.locationFailed());
      return;
    }
    emitPresentation(
      CloudBackupCubitEvent.locationChosen(location.displayName),
    );
    await refresh();
  }

  Future<void> syncNow() async {
    emit(state.copyWith(syncing: true));
    final snapshot = await BackupService.latestSnapshot();
    if (snapshot == null) {
      emit(state.copyWith(syncing: false));
      return;
    }
    final result = await CloudBackupManager.syncSnapshot(snapshot);
    emit(state.copyWith(syncing: false));
    switch (result.status) {
      case CloudSyncStatus.synced:
        emitPresentation(const CloudBackupCubitEvent.syncSucceeded());
        await refresh();
      case CloudSyncStatus.unavailable:
        emitPresentation(
          CloudBackupCubitEvent.unavailable(
            result.reason ?? CloudUnavailableReason.error,
          ),
        );
      case CloudSyncStatus.failed:
        emitPresentation(
          CloudBackupCubitEvent.syncFailed(result.error ?? ''),
        );
      case CloudSyncStatus.skipped:
        break;
    }
  }
}
