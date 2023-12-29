import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bird_bloc.dart';
import 'add_bird_screen.dart';

@RoutePage()
class AddBirdPage extends StatelessWidget {
  const AddBirdPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BirdBloc(id: ''),
      child: AddBirdScreen(),
    );
  }
}
