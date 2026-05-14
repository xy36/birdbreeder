import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/account/cubit/account_cubit.dart';
import 'package:birdbreeder/features/account/cubit/account_cubit_event.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

class AccountListener
    extends BlocPresentationListener<AccountCubit, AccountCubitEvent> {
  AccountListener({super.key, super.child})
      : super(
          listener: (context, event) {
            final tr = context.tr.account.events;
            switch (event) {
              case AccountExportFailed(:final message):
                context.snackError(tr.export_failed(Error: message));
              case AccountExportSucceeded():
                context.snackSuccess(tr.export_succeeded);

              case AccountImportFailed(:final message):
                context.snackError(tr.import_failed(Error: message));
              case AccountImportSucceeded(:final count):
                context.snackSuccess(tr.imported(count: count));

              case AccountSwitchToLocalFailed(:final message):
                context.snackError(tr.switch_failed(Error: message));
              case AccountSwitchedToLocal(:final count):
                context.snackSuccess(tr.switched_to_local(count: count));
            }
          },
        );
}
