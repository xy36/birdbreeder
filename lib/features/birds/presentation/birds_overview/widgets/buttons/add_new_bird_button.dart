import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bird_page.dart';
import 'package:birdbreeder/services/screen_size.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class AddNewBirdButton extends StatefulWidget {
  const AddNewBirdButton({super.key});

  @override
  State<AddNewBirdButton> createState() => _AddNewBirdButtonState();
}

class _AddNewBirdButtonState extends State<AddNewBirdButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => openBird(context),
      child: const Icon(Icons.add),
    );
  }
}

Future<void> openBird(BuildContext context, {Bird? bird}) async {
  final size = ScreenSize.getScreenSize(context);
  if (size.isXs()) {
    await context.router.push(BirdRoute(bird: bird));
  } else {
    await showChildAsDrawerDialog(context, BirdPage(bird: bird));
  }
}
