import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';

class ButtonBirdAdd extends StatelessWidget {
  const ButtonBirdAdd.icon({
    super.key,
    this.onTap,
  }) : buttonType = ButtonType.icon;
  const ButtonBirdAdd.floating({
    super.key,
    this.onTap,
  }) : buttonType = ButtonType.floatingActionButton;
  const ButtonBirdAdd.elevated({
    super.key,
    this.onTap,
  }) : buttonType = ButtonType.elevated;

  final ButtonType buttonType;

  final void Function()? onTap;

  Future<void> _onTap(BuildContext context) async {
    await context.router.push(BirdRoute(bird: null));

    onTap?.call();
  }

  @override
  Widget build(BuildContext context) {
    return AppActionButton(
      onPressed: () => _onTap(context),
      actionButtonType: ActionButtonType.birdAdd,
      type: buttonType,
    );
  }
}
