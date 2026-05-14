import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/backup/cubit/backup_cubit.dart';
import 'package:birdbreeder/features/backup/cubit/backup_cubit_event.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

class BackupListener
    extends BlocPresentationListener<BackupCubit, BackupCubitEvent> {
  BackupListener({super.key, super.child})
      : super(
          listener: (context, event) {
            final tr = context.tr.backup.events;
            switch (event) {
              case BackupCreated():
                context.snackSuccess(tr.created);
              case BackupCreateFailed(:final message):
                context.snackError(tr.create_failed(Error: message));
              case BackupShareFailed(:final message):
                context.snackError(tr.share_failed(Error: message));
              case BackupRestoreFailed(:final message):
                context.snackError(tr.restore_failed(Error: message));
            }
          },
        );
}
