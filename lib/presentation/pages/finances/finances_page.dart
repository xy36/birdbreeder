import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'finances_screen.dart';

@RoutePage()
class FinancesPage extends StatelessWidget {
  const FinancesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FinancesScreen();
  }
}
