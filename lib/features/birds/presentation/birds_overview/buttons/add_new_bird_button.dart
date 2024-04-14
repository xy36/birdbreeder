import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/bloc/birds_bloc.dart';
import 'package:birdbreeder/core/routing/app_router.dart';

class AddNewBirdButton extends StatefulWidget {
  const AddNewBirdButton({super.key});

  @override
  State<AddNewBirdButton> createState() => _AddNewBirdButtonState();
}

class _AddNewBirdButtonState extends State<AddNewBirdButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'addNewBirdButton',
      onPressed: () async {
        await context.router.push(BirdRoute(bird: null));

        if (!mounted) return;

        context.read<BirdsBloc>().add(const BirdsEvent.load());
      },
      child: const Icon(Icons.add),
    );
  }
}
