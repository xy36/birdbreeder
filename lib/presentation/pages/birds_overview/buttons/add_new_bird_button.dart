import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../routing/app_router.dart';

class AddNewBirdButton extends StatelessWidget {
  const AddNewBirdButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'addNewBirdButton',
      onPressed: () async {
        context.router.push(BirdRoute(bird: null));
      },
      child: const Icon(Icons.add),
    );
  }
}
