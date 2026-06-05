import 'dart:async';
import 'dart:io';

import 'package:birdbreeder/app.dart';
import 'package:birdbreeder/features/backup/cubit/backup_list_cubit_event.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/services/backup/backup_service.dart';
import 'package:birdbreeder/services/data_mode/data_mode.dart';
import 'package:birdbreeder/services/database/app_database.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'backup_list_cubit.freezed.dart';
part 'backup_list_state.dart';

class BackupListCubit extends Cubit<BackupListState>
    with BlocPresentationMixin<BackupListState, BackupListCubitEvent> {
  BackupListCubit() : super(const BackupListState.loading()) {
    unawaited(refresh());
  }

  Future<void> refresh() async {
    final list = await BackupService.listSnapshots();
    emit(BackupListState.loaded(snapshots: list));
  }

  Future<void> createSnapshot() async {
    try {
      await BackupService.createSnapshot();
      await BackupService.rotateSnapshots();
      await refresh();
      emitPresentation(const BackupListCubitEvent.created());
    } on Exception catch (e) {
      emitPresentation(BackupListCubitEvent.createFailed(e.toString()));
    }
  }

  Future<void> share(File f) async {
    try {
      await BackupService.shareSnapshot(f);
    } on Exception catch (e) {
      emitPresentation(BackupListCubitEvent.shareFailed(e.toString()));
    }
  }

  Future<void> delete(File f) async {
    try {
      await f.delete();
      await refresh();
    } on Exception catch (e) {
      emitPresentation(BackupListCubitEvent.deleteFailed(e.toString()));
    }
  }

  Future<void> restore(File f) async {
    try {
      if (s1.isRegistered<AppDatabase>()) {
        await s1.get<AppDatabase>().close();
      }
      await s1.reset();
      await BackupService.overwriteDatabase(f);
      await initializeDependencyInjection(DataMode.local);
      runApp(TranslationProvider(child: const App()));
    } on Exception catch (e) {
      emitPresentation(BackupListCubitEvent.restoreFailed(e.toString()));
    }
  }
}
