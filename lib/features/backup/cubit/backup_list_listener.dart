import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/backup/cubit/backup_list_cubit.dart';
import 'package:birdbreeder/features/backup/cubit/backup_list_cubit_event.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

class BackupListListener
    extends BlocPresentationListener<BackupListCubit, BackupListCubitEvent> {
  BackupListListener({super.key, super.child})
      : super(
          listener: (context, event) {
            final tr = context.tr.backup.events;
            switch (event) {
              case BackupListCreated():
                context.snackSuccess(tr.created);
              case BackupListCreateFailed(:final message):
                context.snackError(tr.create_failed(Error: message));
              case BackupListShareFailed(:final message):
                context.snackError(tr.share_failed(Error: message));
              case BackupListDeleteFailed(:final message):
                context.snackError(tr.delete_failed(Error: message));
              case BackupListRestoreFailed(:final message):
                context.snackError(tr.restore_failed(Error: message));
            }
          },
        );
}
