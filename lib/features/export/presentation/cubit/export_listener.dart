import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/export/presentation/cubit/export_cubit.dart';
import 'package:birdbreeder/features/export/presentation/cubit/export_cubit_event.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

class ExportListener
    extends BlocPresentationListener<ExportCubit, ExportCubitEvent> {
  ExportListener({super.key, super.child})
      : super(
          listener: (context, event) {
            final tr = context.tr.export;
            switch (event) {
              case ExportSucceeded(:final fileName):
                context.snackSuccess(tr.events.succeeded(FileName: fileName));
              case ExportFailed(:final message):
                context.snackError(tr.events.failed(Error: message));
              case ExportEmpty():
                context.snackError(tr.empty);
            }
          },
        );
}
