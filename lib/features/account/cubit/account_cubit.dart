import 'package:birdbreeder/app.dart';
import 'package:birdbreeder/features/account/cubit/account_cubit_event.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/services/data_transfer/data_transfer_service.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_cubit.freezed.dart';
part 'account_state.dart';

class AccountCubit extends Cubit<AccountState>
    with BlocPresentationMixin<AccountState, AccountCubitEvent> {
  AccountCubit() : super(const AccountState.idle());

  Future<void> exportJson() async {
    try {
      await DataTransferService.exportData();
      emitPresentation(const AccountCubitEvent.exportSucceeded());
    } on Exception catch (e) {
      emitPresentation(AccountCubitEvent.exportFailed(e.toString()));
    }
  }

  Future<void> importJson({required bool clearExisting}) async {
    try {
      final count = await DataTransferService.importData(
        clearExisting: clearExisting,
      );
      emitPresentation(AccountCubitEvent.importSucceeded(count));
    } on Exception catch (e) {
      emitPresentation(AccountCubitEvent.importFailed(e.toString()));
    }
  }

  Future<void> switchToLocal() async {
    try {
      final count = await DataTransferService.switchToLocal();
      emitPresentation(AccountCubitEvent.switchedToLocal(count));
      runApp(TranslationProvider(child: const App()));
    } on Exception catch (e) {
      emitPresentation(AccountCubitEvent.switchToLocalFailed(e.toString()));
    }
  }
}
