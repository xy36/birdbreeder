import 'package:birdbreeder/features/presentation/pages/bird/bloc/bird_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final birdBloc = context.read<BirdBloc>();

        await showDialog<bool>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Delete Bird'),
              content: const Text('Are you sure you want to delete this bird?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    birdBloc.add(const BirdEvent.delete());
                  },
                  child: const Text('Delete'),
                ),
              ],
            );
          },
        );
      },
      icon: const Icon(Icons.delete),
    );
  }
}
