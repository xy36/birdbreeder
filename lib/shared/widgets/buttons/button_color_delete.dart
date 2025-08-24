import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/bird_color.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';

class ButtonColorDelete extends StatelessWidget {
  const ButtonColorDelete.icon({
    super.key,
    this.onTap,
    required this.color,
  }) : buttonType = ButtonType.icon;
  const ButtonColorDelete.floating({
    super.key,
    this.onTap,
    required this.color,
  }) : buttonType = ButtonType.floatingActionButton;
  const ButtonColorDelete.elevated({
    super.key,
    this.onTap,
    required this.color,
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
