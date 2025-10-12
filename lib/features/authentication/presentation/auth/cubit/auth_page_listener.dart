import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/authentication/presentation/auth/cubit/auth_page_cubit.dart';
import 'package:birdbreeder/features/authentication/presentation/auth/cubit/auth_page_event.dart';
import 'package:birdbreeder/services/snackbar_service.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

class AuthPageListener
    extends BlocPresentationListener<AuthPageCubit, AuthPageEvent> {
  AuthPageListener({
    super.key,
    super.child,
  }) : super(
          listener: (context, event) {
            switch (event) {
              case AuthPageEventSignUpSucceeded():
                context.snackSuccess(context.tr.snackbars.sign_up_success);
                break;

              case AuthPageEventSignUpFailed():
                context.snackError(context.tr.snackbars.sign_up_failed);
                break;

              case AuthPageEventSignInFailed():
                context.snackError(context.tr.snackbars.sign_in_failed);
                break;
            }
          },
        );
}
