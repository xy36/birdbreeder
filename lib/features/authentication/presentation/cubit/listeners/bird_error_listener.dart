import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/authentication/presentation/cubit/login_cubit.dart';

class LoginErrorListener extends BlocListener<LoginCubit, LoginState> {
  LoginErrorListener({
    super.key,
    super.child,
  }) : super(
          listenWhen: (previousState, state) =>
              previousState is! LoginError && state is LoginError,
          listener: (context, state) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                showCloseIcon: true,
                content:
                    Center(child: Text(context.l10n.snackbar__error_login)),
              ),
            );
          },
        );
}
