import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pairs/widgets/add_breeding_pair_sheet.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum BroodActions {
  open,
  edit,
  delete;

  PopupMenuEntry<BroodActions> getItem(BuildContext context) {
    return switch (this) {
      open => PopupMenuItem(
          value: BroodActions.open,
          child: Text(context.tr.pop_up_menu.open),
        ),
      edit => PopupMenuItem(
          value: BroodActions.edit,
          child: Text(context.tr.pop_up_menu.edit),
        ),
      delete => PopupMenuItem(
          value: BroodActions.delete,
          child: Text(
            context.tr.pop_up_menu.delete,
            style: const TextStyle(color: Colors.red),
          ),
        )
    };
  }

  Future<void> executeAction(
    BuildContext context,
    Brood brood,
    BreedingPair breedingPair,
  ) async {
    return switch (this) {
      open => onOpenBrood(context, brood),
      edit => await openSheet<void>(
          context,
          AddBreedingPairSheet(breedingPair: breedingPair),
        ),
      delete => {
          if (context.mounted)
            await DeleteDialog.show(
              context: context,
              title: '${context.tr.pop_up_menu.delete}?',
              onDelete: () =>
                  context.read<BirdBreederCubit>().deleteBrood(brood.id),
            ),
        }
    };
  }
}
