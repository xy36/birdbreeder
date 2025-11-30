import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/features/finances/finances_screen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FinancesPage extends StatelessWidget {
  const FinancesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FinancesScreen();
  }
}
