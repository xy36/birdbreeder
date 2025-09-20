import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pairs/widgets/add_breeding_pair_sheet.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum BreedingPairActions {
  edit,
  delete;

  PopupMenuEntry<BreedingPairActions> getItem(BuildContext context) {
    return switch (this) {
      edit => PopupMenuItem(
          value: BreedingPairActions.edit,
          child: Text(context.tr.pop_up_menu.edit),
        ),
      delete => PopupMenuItem(
          value: BreedingPairActions.delete,
          child: Text(
            context.tr.pop_up_menu.delete,
            style: const TextStyle(color: Colors.red),
          ),
        )
    };
  }

  Future<void> executeAction(
    BuildContext context,
    BreedingPair breedingPair,
  ) async {
    return switch (this) {
      edit => await openSheet<void>(
          context,
          AddBreedingPairSheet(breedingPair: breedingPair),
        ),
      delete => {
          if (context.mounted)
            await DeleteDialog.show(
              context: context,
              title: context.tr.breeding_pairs.delete,
              onDelete: () => context
                  .read<BirdBreederCubit>()
                  .deleteBreedingPair(breedingPair),
            ),
        }
    };
  }
}
