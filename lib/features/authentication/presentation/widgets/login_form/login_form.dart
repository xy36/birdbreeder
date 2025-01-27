import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/generic_join.dart';
import 'package:birdbreeder/features/authentication/presentation/cubit/login_cubit.dart';
import 'package:birdbreeder/features/authentication/presentation/widgets/login_form/email_form.dart';
import 'package:birdbreeder/features/authentication/presentation/widgets/login_form/header.dart';
import 'package:birdbreeder/features/authentication/presentation/widgets/login_form/password_form.dart';
import 'package:birdbreeder/features/authentication/presentation/widgets/login_form/sign_in_button.dart';
import 'package:birdbreeder/services/screen_size.dart';

// ignore: must_be_immutable
class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String? email;

  String? password;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.responsiveValueMobileAndGreater<double>(
          mobile: 8,
          greater: 16,
        ),
      ),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
