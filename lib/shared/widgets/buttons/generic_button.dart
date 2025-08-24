import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';

class GenericButton extends StatelessWidget {
  const GenericButton.icon({
    super.key,
    required this.actionButtonType,
    this.onTap,
  }) : buttonType = ButtonType.icon;
  const GenericButton.floating({
    super.key,
    required this.actionButtonType,
    this.onTap,
  }) : buttonType = ButtonType.floatingActionButton;
  const GenericButton.elevated({
    super.key,
    this.onTap,
    required this.actionButtonType,
  }) : buttonType = ButtonType.elevated;

  final ButtonType buttonType;

  final ActionButtonType actionButtonType;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AppActionButton(
      onPressed: onTap,
      actionButtonType: actionButtonType,
      type: buttonType,
    );
  }
}
