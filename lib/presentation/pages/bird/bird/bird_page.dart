import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bird_bloc.dart';
import 'bird_screen.dart';

@RoutePage()
class BirdPage extends StatelessWidget {
  const BirdPage({
    super.key,
    @PathParam('id') this.id,
  });

  final String? id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BirdBloc(
        id: id!,
      )..add(
          BirdEvent.load(),
        ),
      child: BirdScreen(),
    );
  }
}
