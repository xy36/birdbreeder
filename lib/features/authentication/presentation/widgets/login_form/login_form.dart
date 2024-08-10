import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/generic_join.dart';
import 'package:birdbreeder/features/authentication/presentation/cubit/login_cubit.dart';
import 'package:birdbreeder/features/authentication/presentation/widgets/login_form/email_form.dart';
import 'package:birdbreeder/features/authentication/presentation/widgets/login_form/header.dart';
import 'package:birdbreeder/features/authentication/presentation/widgets/login_form/password_form.dart';
import 'package:birdbreeder/features/authentication/presentation/widgets/login_form/sign_in_button.dart';
import 'package:birdbreeder/services/screen_size.dart';

// ignore: must_be_immutable
class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  String? email;
  String? password;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = ScreenSize.getScreenSize(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.hPaddingMedium,
        vertical: size.vPaddingMedium,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Header(),
                EmailForm(
                  onChanged: (value) => email = value,
                ),
                PasswordForm(
                  onChanged: (value) => password = value,
                ),
                SignInButton(
                  onPressed: () => onSignInPressed(context),
                ),
              ].genericJoin(const SizedBox(height: 32)),
            ),
          ),
          //TODO: implement this

          // Text(
          //   'Dont have an account? Sign up',
          //   style: Theme.of(context).textTheme.titleSmall,
          // ),
        ],
      ),
    );
  }

  void onSignInPressed(BuildContext context) {
    if (formKey.currentState?.validate() ?? false == true) {
      context.read<LoginCubit>().login(
            email!,
            password!,
          );
    }
  }
}
