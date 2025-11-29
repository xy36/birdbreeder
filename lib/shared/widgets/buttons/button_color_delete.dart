import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';

class ButtonColorDelete extends StatelessWidget {
  const ButtonColorDelete.icon({
    required this.color,
    super.key,
    this.onTap,
  }) : buttonType = ButtonType.icon;
  const ButtonColorDelete.floating({
    required this.color,
    super.key,
    this.onTap,
  }) : buttonType = ButtonType.floatingActionButton;
  const ButtonColorDelete.elevated({
    required this.color,
    super.key,
    this.onTap,
  }) : buttonType = ButtonType.elevated;

  final BirdColor color;

  final ButtonType buttonType;

  final void Function()? onTap;

  Future<void> _onTap(BuildContext context) async {
    await context.read<BirdBreederCubit>().deleteColor(color);
    onTap?.call();
  }

  @override
  Widget build(BuildContext context) {
    return AppActionButton(
      onPressed: () => _onTap(context),
      actionButtonType: ActionButtonType.colorDelete,
      type: buttonType,
    );
  }
}
