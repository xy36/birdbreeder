import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';

class ButtonBroodAdd extends StatelessWidget {
  const ButtonBroodAdd.icon({
    super.key,
    this.onTap,
    required this.breedingPair,
  }) : buttonType = ButtonType.icon;
  const ButtonBroodAdd.floating({
    super.key,
    this.onTap,
    required this.breedingPair,
  }) : buttonType = ButtonType.floatingActionButton;
  const ButtonBroodAdd.elevated({
    super.key,
    this.onTap,
    required this.breedingPair,
  }) : buttonType = ButtonType.elevated;

  final ButtonType buttonType;

  final void Function()? onTap;

  final BreedingPair breedingPair;

  Future<void> _onTap(BuildContext context) async {
    await context.read<BirdBreederCubit>().addBrood(breedingPair);

    onTap?.call();
  }

  @override
  Widget build(BuildContext context) {
    return AppActionButton(
      onPressed: () => _onTap(context),
      actionButtonType: ActionButtonType.broodAdd,
      type: buttonType,
    );
  }
}
