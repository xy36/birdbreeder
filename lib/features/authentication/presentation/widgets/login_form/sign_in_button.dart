import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/authentication/presentation/cubit/login_cubit.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              if (state is LoginLoading) {
                return const CircularProgressIndicator();
              }
              return Text(
                context.l10n.login__sign_in,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
              );
            },
          ),
        ],
      ),
    );
  }
}
