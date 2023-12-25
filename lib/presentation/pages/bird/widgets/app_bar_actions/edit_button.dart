import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/bird_bloc.dart';

class EditButton extends StatelessWidget {
  const EditButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<BirdBloc, BirdState>(
        builder: (context, state) {
          return IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              context
                  .read<BirdBloc>()
                  .add(BirdEvent.setEditMode(isEditMode: true));
            },
          );
        },
      ),
    );
  }
}
