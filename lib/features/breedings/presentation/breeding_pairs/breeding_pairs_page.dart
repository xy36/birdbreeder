import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pairs/breeding_pairs_screen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BreedingPairsPage extends StatelessWidget {
  const BreedingPairsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BreedingPairsScreen();
  }
}
