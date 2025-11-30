import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/egg_extension.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/models/item_action.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum EggActions implements ItemAction<Egg> {
  markFertilized,
  markHatched,
  setRingnumber,
  setColor,
  markFledged,
  markUnfertilized,
  markDied,
  delete;

  static Widget buildMenu(
    BuildContext context,
    Egg egg, [
    List<EggActions>? include,
  ]) {
    return moreMenu<Egg>(
      context,
      egg,
      values
          .map(
            (action) => (
              icon: null,
              label: action.getLabel(context),
              action: action.execute,
            ),
          )
          .toList(),
    );
  }

  PopupMenuEntry<EggActions> getItem(BuildContext context) => PopupMenuItem(
        value: this,
        child: Text(getLabel(context)),
      );

  @override
  Future<void> execute(
    BuildContext context,
    Egg egg, {
    dynamic extra,
  }) async {
    return switch (this) {
      EggActions.markHatched => _EggActionHelper.onMarkHatched(context, egg),
      EggActions.setRingnumber =>
        _EggActionHelper.onSetRingnumber(context, egg),
      EggActions.setColor => _EggActionHelper.onSetColor(context, egg),
      EggActions.markFledged => _EggActionHelper.onMarkFledged(context, egg),
      EggActions.markFertilized =>
        _EggActionHelper.onMarkFertilized(context, egg),
      EggActions.markUnfertilized =>
        _EggActionHelper.onMarkUnfertilized(context, egg),
      EggActions.markDied => _EggActionHelper.onMarkDied(context, egg),
      EggActions.delete => _EggActionHelper.onDelete(context, egg),
    };
  }

  @override
  String getLabel(BuildContext context) => switch (this) {
        setRingnumber => context.tr.pop_up_menu.set_ringnumber,
        setColor => context.tr.pop_up_menu.set_color,
        markHatched => context.tr.pop_up_menu.mark_hatched,
        markFledged => context.tr.pop_up_menu.mark_fledged,
        markUnfertilized => context.tr.pop_up_menu.mark_unfertilized,
        markFertilized => context.tr.pop_up_menu.mark_fertilized,
        markDied => context.tr.pop_up_menu.mark_died,
        delete => context.tr.pop_up_menu.delete,
      };

  @override
  Icon get icon => throw UnimplementedError();
}

class _EggActionHelper {
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
