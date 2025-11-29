import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';

enum BirdActions {
  edit,
  duplicate,
  delete;

  Icon get icon {
    return switch (this) {
      edit => const Icon(AppIcons.edit),
      delete => const Icon(AppIcons.delete, color: Colors.red),
      duplicate => const Icon(AppIcons.duplicate),
    };
  }

  String getLabel(BuildContext context) {
    return switch (this) {
      edit => context.tr.pop_up_menu.edit,
      delete => context.tr.pop_up_menu.delete,
      duplicate => context.tr.pop_up_menu.duplicate,
    };
  }

  Future<void> executeAction(
    BuildContext context,
    Bird bird,
  ) async {
    return switch (this) {
      edit => context.router.push(BirdRoute(bird: bird)),
      delete => {
          if (context.mounted)
            await DeleteDialog.show(
              context: context,
              title: context.tr.bird.delete,
              onDelete: () async {
                await context.maybePop();

                if (context.mounted) {
                  await context.read<BirdBreederCubit>().deleteBird(bird);
                }
              },
            ),
        },
      duplicate => await context.read<BirdBreederCubit>().duplicateBird(bird),
    };
  }
}
