import 'dart:async';
import 'dart:io';

import 'package:birdbreeder/app.dart';
import 'package:birdbreeder/features/backup/cubit/backup_cubit_event.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/services/backup/backup_service.dart';
import 'package:birdbreeder/services/data_mode/data_mode.dart';
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
      await BackupService.createSnapshot();
      await BackupService.rotateSnapshots();
      emitPresentation(const BackupCubitEvent.created());
      await refresh();
    } on Exception catch (e) {
      emitPresentation(BackupCubitEvent.createFailed(e.toString()));
    }
  }

  Future<void> shareLatestBackup() async {
    final latest = state.latestSnapshot;
    if (latest == null) return;
    try {
      await BackupService.shareSnapshot(latest);
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
      if (s1.isRegistered<AppDatabase>()) {
        await s1.get<AppDatabase>().close();
      }
      await s1.reset();
      await BackupService.overwriteDatabase(file);
      await initializeDependencyInjection(DataMode.local);
      runApp(TranslationProvider(child: App()));
    } on Exception catch (e) {
      emitPresentation(BackupCubitEvent.restoreFailed(e.toString()));
    }
  }
}
