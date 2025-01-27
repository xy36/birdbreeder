import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/authentication/presentation/cubit/listeners/bird_error_listener.dart';
import 'package:birdbreeder/features/authentication/presentation/cubit/login_cubit.dart';
import 'package:birdbreeder/features/authentication/presentation/widgets/image_form.dart';
import 'package:birdbreeder/features/authentication/presentation/widgets/login_form/login_form.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/screen_size.dart';

@RoutePage()
// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  String? email;
  String? password;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(s1()),
      child: MultiBlocListener(
        listeners: [LoginErrorListener()],
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
          ),
          body: LayoutBuilder(
            builder: (context, constraints) {
              return context.responsiveValueTabletLandscapeAndGreater(
                tabletLandscape: const SingleChildScrollView(
                  child: LoginForm(),
                ),
                greater: Row(
                  children: [
                    const Expanded(
                      child: ImageForm(),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SingleChildScrollView(
                        child: SizedBox(
                          width: constraints.maxWidth * 0.4,
                          child: const LoginForm(),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
