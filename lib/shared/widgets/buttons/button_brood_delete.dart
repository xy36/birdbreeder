import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';

class ButtonBroodDelete extends StatelessWidget {
  const ButtonBroodDelete.icon({
    super.key,
    this.onTap,
    required this.brood,
  }) : buttonType = ButtonType.icon;
  const ButtonBroodDelete.floating({
    super.key,
    this.onTap,
    required this.brood,
  }) : buttonType = ButtonType.floatingActionButton;
  const ButtonBroodDelete.elevated({
    super.key,
    this.onTap,
    required this.brood,
  }) : buttonType = ButtonType.elevated;

  final Brood brood;

  final ButtonType buttonType;

  final void Function()? onTap;

  Future<void> _onTap(BuildContext context) async {
    await context.read<BirdBreederCubit>().deleteBrood(brood.id);
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
