import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/backup/cubit/cloud_backup_cubit.dart';
import 'package:birdbreeder/features/backup/cubit/cloud_backup_cubit_event.dart';
import 'package:birdbreeder/services/backup/cloud/cloud_backup_target.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

class CloudBackupListener
    extends BlocPresentationListener<CloudBackupCubit, CloudBackupCubitEvent> {
  CloudBackupListener({super.key, super.child})
      : super(
          listener: (context, event) {
            final tr = context.tr.backup.cloud.events;
            switch (event) {
              case CloudLocationChosen(:final name):
                context.snackSuccess(tr.location_chosen(Name: name));
              case CloudLocationFailed():
                context.snackError(tr.location_failed);
              case CloudSyncSucceeded():
                context.snackSuccess(tr.sync_succeeded);
              case CloudSyncFailed(:final message):
                context.snackError(tr.sync_failed(Error: message));
              case CloudUnavailable(:final reason):
                context.snackError(_unavailableMessage(context, reason));
            }
          },
        );

  static String _unavailableMessage(
    BuildContext context,
    CloudUnavailableReason reason,
  ) {
    final tr = context.tr.backup.cloud.events;
    return switch (reason) {
      CloudUnavailableReason.notSignedIn => tr.unavailable_icloud,
      CloudUnavailableReason.noLocation => tr.unavailable_folder,
      CloudUnavailableReason.unsupported => tr.unavailable_folder,
      CloudUnavailableReason.error => tr.sync_failed(Error: ''),
    };
  }
}
