import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';

class ButtonBirdEdit extends StatelessWidget {
  const ButtonBirdEdit.icon({
    required this.bird,
    super.key,
    this.onTap,
  }) : buttonType = ButtonType.icon;
  const ButtonBirdEdit.floating({
    required this.bird,
    super.key,
    this.onTap,
  }) : buttonType = ButtonType.floatingActionButton;
  const ButtonBirdEdit.elevated({
    required this.bird,
    super.key,
    this.onTap,
  }) : buttonType = ButtonType.elevated;

  final ButtonType buttonType;

  final void Function()? onTap;

  final Bird bird;

  Future<void> _onTap(BuildContext context) async {
    await context.router.push(BirdRoute(bird: bird));

    onTap?.call();
  }

  @override
  Widget build(BuildContext context) {
    return AppActionButton(
      onPressed: () => _onTap(context),
      actionButtonType: ActionButtonType.birdEdit,
      type: buttonType,
    );
  }
}
