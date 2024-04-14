import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'breedings_screen.dart';

@RoutePage()
class BreedingsPage extends StatelessWidget {
  const BreedingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BreedingsScreen();
  }
}
