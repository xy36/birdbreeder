import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'birds_overview_screen.dart';

@RoutePage()
class BirdsOverviewPage extends StatelessWidget {
  const BirdsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BirdsOverviewScreen();
  }
}
