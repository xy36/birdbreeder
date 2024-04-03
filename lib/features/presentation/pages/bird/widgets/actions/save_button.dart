import 'package:birdbreeder/features/presentation/pages/bird/bloc/bird_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        FocusScope.of(context).unfocus();
        context.read<BirdBloc>().add(const BirdEvent.save());
      },
      icon: const Icon(Icons.save),
    );
  }
}
