import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
          ),
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
              hintText: 'Enter your password',
            ),
          ),
          const Text('Login Page'),
          ElevatedButton(
            onPressed: () async {
              if (await login()) {
                await context.router.replace(const MenuRoute());
              }
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }

  Future<bool> login() async {
    final email = emailController.text;
    final password = passwordController.text;

    final userResult = await s1
        .get<IAuthenticationService>()
        .signInWithEmailAndPassword(email, password);

    if (userResult.isValue) {
      print('user is logged in');
      return true;
    } else {
      print('user is not logged in');
      return false;
    }
  }

  Future<void> logout() async {
    await s1.get<IAuthenticationService>().signOut();
  }
}
