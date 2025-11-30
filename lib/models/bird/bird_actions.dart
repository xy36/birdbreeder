import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/item_action.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum BirdActions implements ItemAction<Bird> {
  edit,
  duplicate,
  delete;

  static Widget buildMenu(
    BuildContext context,
    Bird bird, [
    List<BirdActions>? include,
  ]) {
    return moreMenu<Bird>(
      context,
      bird,
      values
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
  Icon get icon {
    return switch (this) {
      edit => const Icon(AppIcons.edit),
      delete => const Icon(AppIcons.delete, color: Colors.red),
      duplicate => const Icon(AppIcons.duplicate),
    };
  }

  @override
  String getLabel(BuildContext context) {
    return switch (this) {
      edit => context.tr.pop_up_menu.edit,
      delete => context.tr.pop_up_menu.delete,
      duplicate => context.tr.pop_up_menu.duplicate,
    };
  }

  @override
  Future<void> execute(
    BuildContext context,
    Bird bird, {
    dynamic extra,
  }) async {
    switch (this) {
      case edit:
        await context.router.push(BirdRoute(bird: bird));
      case delete:
        if (context.mounted) {
          await DeleteDialog.show(
            context: context,
            title: context.tr.bird.delete,
            onDelete: () async {
              await context.maybePop();

              if (context.mounted) {
                await context.read<BirdBreederCubit>().deleteBird(bird);
              }
            },
          );
        }
      case duplicate:
        await context.read<BirdBreederCubit>().duplicateBird(bird);
    }
  }
}
