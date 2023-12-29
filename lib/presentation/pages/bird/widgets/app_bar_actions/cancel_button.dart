import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/bird_bloc.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<BirdBloc, BirdState>(
        builder: (context, state) {
          return IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              context.router.pop<bool>(false);
            },
          );
        },
      ),
    );
  }
}
