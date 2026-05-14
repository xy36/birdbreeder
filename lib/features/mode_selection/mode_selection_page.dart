import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/features/mode_selection/mode_selection_screen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ModeSelectionPage extends StatelessWidget {
  const ModeSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ModeSelectionScreen();
  }
}
