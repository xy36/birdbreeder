import 'dart:async';
import 'dart:io';

import 'package:birdbreeder/app.dart';
import 'package:birdbreeder/features/backup/cubit/backup_cubit_event.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/services/backup/backup_service.dart';
import 'package:birdbreeder/services/backup/cloud/cloud_backup_manager.dart';
import 'package:birdbreeder/services/database/app_database.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'backup_cubit.freezed.dart';
part 'backup_state.dart';

class BackupCubit extends Cubit<BackupState>
    with BlocPresentationMixin<BackupState, BackupCubitEvent> {
  BackupCubit() : super(const BackupState.initial()) {
    unawaited(refresh());
  }

  Future<void> refresh() async {
    final latest = await BackupService.latestSnapshot();
    final days = await BackupService.daysSinceLastExternal();
    emit(
      BackupState.loaded(
        latestSnapshot: latest,
        daysSinceExternal: days,
      ),
    );
  }

  Future<void> createBackup() async {
    try {
      final snapshot = await BackupService.createSnapshot();
      await BackupService.rotateSnapshots();
      emitPresentation(const BackupCubitEvent.created());
      // Best-effort mirror to the cloud folder if the user enabled it; the
      // local snapshot already succeeded, so cloud failure stays silent here
      // (the dedicated cloud section surfaces its own status).
      if (await CloudBackupManager.isEnabled()) {
        unawaited(CloudBackupManager.syncSnapshot(snapshot));
      }
      await refresh();
    } on Exception catch (e) {
      emitPresentation(BackupCubitEvent.createFailed(e.toString()));
    }
  }

  /// Builds a self-contained export bundle (photos embedded) and shares it.
  ///
  /// The bundle lives in the temp directory and is deleted after the share
  /// sheet closes; the local snapshot history stays image-free.
  Future<void> shareExportBundle() async {
    try {
      final bundle = await BackupService.createExportBundle();
      try {
        await BackupService.shareSnapshot(bundle);
      } finally {
        if (bundle.existsSync()) await bundle.delete();
      }
      await refresh();
    } on Exception catch (e) {
      emitPresentation(BackupCubitEvent.shareFailed(e.toString()));
    }
  }

  /// Opens file picker. Returns null if user cancels or on error.
  /// Errors are reported via [BackupCubitEvent.restoreFailed].
  Future<File?> pickRestoreFile() async {
    try {
      return await BackupService.pickRestoreFile();
    } on Exception catch (e) {
      emitPresentation(BackupCubitEvent.restoreFailed(e.toString()));
      return null;
    }
  }

  /// Caller must have already confirmed; this commits and restarts.
  Future<void> restoreFromFile(File file) async {
    try {
      // Image-free bundles (external mode) only carry hashes; pull the blobs
      // from the cloud folder afterwards — mirroring [BackupListCubit.restore].
      // Embedded bundles restore their blobs inside overwriteDatabase.
      final externalHashes = await CloudBackupManager.imageHashesFromBundle(
        file,
      );
      if (s1.isRegistered<AppDatabase>()) {
        await s1.get<AppDatabase>().close();
      }
      await s1.reset();
      await BackupService.overwriteDatabase(file);
      await CloudBackupManager.restoreExternalImages(externalHashes);
      await initializeDependencyInjection();
      runApp(TranslationProvider(child: const App()));
    } on Exception catch (e) {
      emitPresentation(BackupCubitEvent.restoreFailed(e.toString()));
    }
  }
}
