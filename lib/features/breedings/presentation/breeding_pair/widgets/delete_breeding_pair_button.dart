import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair/cubit/breeding_pair_cubit.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';

class DeleteBreedingPairButton extends StatelessWidget {
  const DeleteBreedingPairButton({
    super.key,
    required this.breedingPair,
  });

  final BreedingPair breedingPair;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete),
      onPressed: () async {
        await DeleteDialog.show(
          context: context,
          title: context.l10n.breeding_pair__delete_breeding_pair,
          onDelete: () =>
              context.read<BreedingPairCubit>().delete(breedingPair),
        );
      },
    );
  }
}
