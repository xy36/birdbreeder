import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/breedings/breeding_pairs/widgets/add_breeding_pair_sheet.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/item_action.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum BreedingPairActions implements ItemAction<BreedingPair> {
  editPair,
  removePair;

  static Widget buildMenu(
    BuildContext context,
    BreedingPair pair, {
    List<BreedingPairActions>? include,
  }) {
    return moreMenu<BreedingPair>(
      context,
      pair,
      values
          .where((action) => include == null || include.contains(action))
          .map(
            (action) => (
              icon: action.icon,
              label: action.getLabel(context),
              action: action.execute,
            ),
          )
          .toList(),
    );
  }

  @override
  Icon get icon => switch (this) {
        editPair => const Icon(AppIcons.edit),
        removePair => const Icon(AppIcons.delete, color: Colors.red),
      };

  @override
  String getLabel(BuildContext context) => switch (this) {
        editPair => context.tr.pop_up_menu.edit,
        removePair => context.tr.pop_up_menu.delete,
      };

  @override
  Future<void> execute(
    BuildContext context,
    BreedingPair pair, {
    dynamic extra,
  }) async {
    switch (this) {
      case BreedingPairActions.editPair:
        await openSheet<void>(
          context,
          AddBreedingPairSheet(breedingPair: pair),
        );

      case BreedingPairActions.removePair:
        if (!context.mounted) return;

        await DeleteDialog.show(
          context: context,
          title: context.tr.breeding_pairs.delete,
          onDelete: () async {
            await context.maybePop();

            if (!context.mounted) return;

            await context.read<BirdBreederCubit>().deleteBreedingPair(pair);
          },
        );
    }
  }
}
