import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';

class ButtonBroodDelete extends StatelessWidget {
  const ButtonBroodDelete.icon({
    required this.brood,
    super.key,
    this.onTap,
  }) : buttonType = ButtonType.icon;
  const ButtonBroodDelete.floating({
    required this.brood,
    super.key,
    this.onTap,
  }) : buttonType = ButtonType.floatingActionButton;
  const ButtonBroodDelete.elevated({
    required this.brood,
    super.key,
    this.onTap,
  }) : buttonType = ButtonType.elevated;

  final Brood brood;

  final ButtonType buttonType;

  final void Function()? onTap;

  Future<void> _onTap(BuildContext context) async {
    await context.read<BirdBreederCubit>().deleteBrood(brood);
    onTap?.call();
  }

  @override
  Widget build(BuildContext context) {
    return AppActionButton(
      onPressed: () => _onTap(context),
      actionButtonType: ActionButtonType.broodDelete,
      type: buttonType,
    );
  }
}
