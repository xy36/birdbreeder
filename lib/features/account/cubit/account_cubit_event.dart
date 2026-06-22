import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_cubit_event.freezed.dart';

@freezed
class AccountCubitEvent with _$AccountCubitEvent {
  const factory AccountCubitEvent.exportFailed(String message) =
      AccountExportFailed;
  const factory AccountCubitEvent.exportSucceeded() = AccountExportSucceeded;

  const factory AccountCubitEvent.importFailed(String message) =
      AccountImportFailed;
  const factory AccountCubitEvent.importSucceeded(int count) =
      AccountImportSucceeded;
}
