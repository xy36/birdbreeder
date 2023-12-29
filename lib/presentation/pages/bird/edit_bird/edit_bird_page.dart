import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/presentation/pages/bird/bloc/bird_bloc.dart';
import 'package:birdbreeder/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'edit_bird_screen.dart';

@RoutePage()
class EditBirdPage extends StatelessWidget {
  const EditBirdPage({
    super.key,
    @PathParam('id') required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BirdBloc(id: id)..add(BirdEvent.load()),
      child: BlocListener<BirdBloc, BirdState>(
        listener: (context, state) async {
          if (state.status == BirdStatus.saved) {
            await context.router.replace(BirdRoute(id: id));
          }
          if (state.status == BirdStatus.deleted) {
            await context.router.replace(BirdsOverviewRoute());
          }
        },
        child: EditBirdScreen(),
      ),
    );
  }
}
