import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/egg_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/egg.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/bird_color.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum EggActions {
  markFertilized,
  markHatched,
  setRingnumber,
  setColor,
  markFledged,
  markUnfertilized,
  markDied,
  delete;

  PopupMenuEntry<EggActions> getItem(BuildContext context) {
    return switch (this) {
      setRingnumber => PopupMenuItem(
          value: EggActions.setRingnumber,
          child: Text(context.tr.pop_up_menu.set_ringnumber),
        ),
      setColor => PopupMenuItem(
          value: EggActions.setColor,
          child: Text(context.tr.pop_up_menu.set_color),
        ),
      markHatched => PopupMenuItem(
          value: EggActions.markHatched,
          child: Text(context.tr.pop_up_menu.mark_hatched),
        ),
      markFledged => PopupMenuItem(
          value: EggActions.markFledged,
          child: Text(context.tr.pop_up_menu.mark_fledged),
        ),
      markUnfertilized => PopupMenuItem(
          value: EggActions.markUnfertilized,
          child: Text(context.tr.pop_up_menu.mark_unfertilized),
        ),
      markFertilized => PopupMenuItem(
          value: EggActions.markFertilized,
          child: Text(context.tr.pop_up_menu.mark_fertilized),
        ),
      markDied => PopupMenuItem(
          value: EggActions.markDied,
          child: Text(context.tr.pop_up_menu.mark_died),
        ),
      delete => PopupMenuItem(
          value: EggActions.delete,
          child: Text(
            context.tr.pop_up_menu.delete,
            style: const TextStyle(color: Colors.red),
          ),
        )
    };
  }

  Future<void> executeAction(
    BuildContext context,
    Egg egg,
  ) async {
    return switch (this) {
      EggActions.markHatched => EggActionHelper.onMarkHatched(context, egg),
      EggActions.setRingnumber => EggActionHelper.onSetRingnumber(context, egg),
      EggActions.setColor => EggActionHelper.onSetColor(context, egg),
      EggActions.markFledged => EggActionHelper.onMarkFledged(context, egg),
      EggActions.markFertilized =>
        EggActionHelper.onMarkFertilized(context, egg),
      EggActions.markUnfertilized =>
        EggActionHelper.onMarkUnfertilized(context, egg),
      EggActions.markDied => EggActionHelper.onMarkDied(context, egg),
      EggActions.delete => EggActionHelper.onDelete(context, egg),
    };
  }
}

class EggActionHelper {
  static Future<void> onSetRingnumber(BuildContext context, Egg egg) async {
    final cubit = context.read<BirdBreederCubit>();
    await promptTextValue(
      context,
      title: context.tr.egg.action.set_ringnumber,
    ).then(
      (v) async {
        if (v == null) return null;
        return cubit.updateEgg(
          egg.copyWith(ringnumber: v),
        );
      },
    );
  }

  static Future<void> onSetColor(BuildContext context, Egg egg) async {
    final cubit = context.read<BirdBreederCubit>();
    final colors = cubit.state.birdBreederResources.colors;

    await promptValueSelector(
      context,
      initialValue: egg.colorResolved,
      values: colors,
      title: context.tr.colors.pick,
      filterFn: (item, filter) {
        return item.name?.toLowerCase().contains(filter.toLowerCase()) ?? false;
      },
      onAdd: (value) => cubit.addColor(BirdColor.create(name: value)),
      itemBuilder: (context, item, _) => ListTile(
        title: Text(item.name ?? '-'),
      ),
    ).then((v) async {
      if (v == null) return;
      await cubit.updateEgg(
        egg.copyWith(colorId: v.id),
      );
    });
  }

  static Future<void> onMarkHatched(BuildContext context, Egg egg) async {
    final cubit = context.read<BirdBreederCubit>();
    await promptDateValue(
      context,
      title: context.tr.egg.pick_hatched_date,
    ).then(
      (v) async {
        if (v == null) return null;
        return cubit.updateEgg(
          egg.copyWith(
            hatchedAt: v,
            status: EggStatus.hatched,
          ),
        );
      },
    );
  }

  static Future<void> onMarkFledged(BuildContext context, Egg egg) async {
    final cubit = context.read<BirdBreederCubit>();
    await promptDateValue(
      context,
      title: context.tr.egg.pick_fledged_date,
    ).then(
      (v) async {
        if (v == null) return null;
        return cubit.updateEgg(
          egg.copyWith(
            fledgedAt: v,
            status: EggStatus.fledged,
          ),
        );
      },
    );
  }

  static Future<void> onMarkUnfertilized(BuildContext context, Egg egg) async {
    await context.read<BirdBreederCubit>().updateEgg(
          egg.copyWith(status: EggStatus.unfertilized),
        );
  }

  static Future<void> onMarkFertilized(BuildContext context, Egg egg) async {
    await context.read<BirdBreederCubit>().updateEgg(
          egg.copyWith(status: EggStatus.fertilized),
        );
  }

  static Future<void> onMarkDied(BuildContext context, Egg egg) async {
    await context.read<BirdBreederCubit>().updateEgg(
          egg.copyWith(
            status: EggStatus.dead,
          ),
        );
  }

  static Future<void> onDelete(BuildContext context, Egg egg) async {
    await context.read<BirdBreederCubit>().deleteEgg(egg);
  }
}
