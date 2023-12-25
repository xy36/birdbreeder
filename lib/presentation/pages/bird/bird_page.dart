import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models/entities/bird.dart';
import 'bird_screen.dart';
import 'bloc/bird_bloc.dart';

@RoutePage()
class BirdPage extends StatelessWidget {
  const BirdPage({super.key, required this.bird});

  final Bird? bird;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BirdBloc(bird: bird),
      child: BirdScreen(),
    );
  }
}
