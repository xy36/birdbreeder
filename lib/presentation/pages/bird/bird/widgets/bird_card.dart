import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/bird_bloc.dart';
import '../../widgets/bird_text_box.dart';

class BirdCard extends StatelessWidget {
  const BirdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        return Card(
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BirdTextBox(label: 'Ringnumber', value: state.bird.ringnumber),
                BirdTextBox(label: 'Cage', value: state.bird.cageId),
                BirdTextBox(label: 'Species', value: state.bird.species?.name),
                BirdTextBox(
                    label: 'Born', value: state.bird.bornDate.toString()),
                BirdTextBox(label: 'color', value: state.bird.color?.name),
              ],
            ),
          ),
        );
      },
    );
  }
}
