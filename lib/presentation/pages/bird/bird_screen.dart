import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bird_bloc.dart';
import 'widgets/app_bar_actions/edit_button.dart';
import 'widgets/app_bar_actions/save_button.dart';
import 'widgets/bird_card.dart';
import 'widgets/fields/ringnumber_field.dart';

class BirdScreen extends StatelessWidget {
  BirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Bird'),
        actions: [
          BlocBuilder<BirdBloc, BirdState>(
            builder: (context, state) {
              return state.isEditMode ? SaveButton() : EditButton();
            },
          )
        ],
      ),
      body: BlocBuilder<BirdBloc, BirdState>(
        builder: (context, state) {
          if (state.isEditMode)
            return Column(
              children: [RingnumberField()],
            );
          return BirdCard();
        },
      ),
    );
  }
}
