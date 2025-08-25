import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/features/account/account_screen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AccountScreen();
  }
}
