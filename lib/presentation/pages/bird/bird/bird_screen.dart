import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/routing/app_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bird_bloc.dart';
import '../edit_bird/edit_bird_page.dart';
import '../widgets/app_bar_actions/edit_button.dart';
import 'widgets/bird_card.dart';

class BirdScreen extends StatefulWidget {
  BirdScreen({super.key});

  @override
  State<BirdScreen> createState() => _BirdScreenState();
}

class _BirdScreenState extends State<BirdScreen> {
  bool showEdit = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Scaffold(
              appBar: AppBar(
                title: BlocBuilder<BirdBloc, BirdState>(
                  builder: (context, state) {
                    return Text(state.bird.ringnumber ?? '');
                  },
                ),
                actions: [
                  BlocBuilder<BirdBloc, BirdState>(
                    builder: (context, state) {
                      return EditButton(
                        onPressed: () async {
                          if (kIsWeb) {
                            setState(() {
                              showEdit = true;
                            });
                            return;
                          }

                          if (state.bird.id == null) return;

                          final result = await context.router
                              .push(EditBirdRoute(id: state.bird.id!));

                          if (result == true) {
                            context.read<BirdBloc>().add(BirdEvent.reload());
                          }
                        },
                      );
                    },
                  )
                ],
              ),
              body: BirdCard()),
        ),
        if (showEdit)
          BlocBuilder<BirdBloc, BirdState>(
            builder: (context, state) {
              return Expanded(child: EditBirdPage(id: state.bird.id!));
            },
          ),
      ],
    );
  }
}
