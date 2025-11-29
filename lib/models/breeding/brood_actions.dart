import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/breedings/breeding_pairs/widgets/add_breeding_pair_sheet.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum BroodActions {
  open,
  edit,
  delete;

  Icon get icon {
    return switch (this) {
      edit => const Icon(AppIcons.edit),
      delete => const Icon(AppIcons.delete, color: Colors.red),
      open => const Icon(AppIcons.open),
    };
  }

  String getLabel(BuildContext context) {
    return switch (this) {
      edit => context.tr.pop_up_menu.edit,
      delete => context.tr.pop_up_menu.delete,
      open => context.tr.pop_up_menu.open,
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
                  context.read<BirdBreederCubit>().deleteBrood(brood),
            ),
        }
    };
  }
}
