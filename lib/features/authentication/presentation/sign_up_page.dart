import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Page'),
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
          const Text('Sign Up Page'),
          ElevatedButton(
            onPressed: signUp,
            child: const Text('Sign Up'),
          ),

          /// Navigate to login page
          /// when user already has an account
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }

  Future<void> signUp() async {
    // final email = emailController.text;
    // final password = passwordController.text;

    // final user =
    //     await firebaseAuthService.signUpWithEmailAndPassword(email, password);

    // if (user != null) {
    //   print('user is signed up');
    // } else {
    //   print('user is not signed up');
    // }
  }
}
