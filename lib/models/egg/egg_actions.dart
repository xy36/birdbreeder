import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/core/extensions/contact_extension.dart';
import 'package:birdbreeder/core/extensions/egg_extension.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/models/item_action.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum EggActions implements ItemAction<Egg> {
  markFertilized,
  markHatched,
  setRingnumber,
  setColor,
  markFledged,
  addToStock,
  markUnfertilized,
  markDied,
  delete;

  static Widget buildMenu(
    BuildContext context,
    Egg egg, [
    List<EggActions>? include,
  ]) {
    final actions =
        (include ?? values).where((a) => a._isVisibleFor(egg)).toList();
    return moreMenu<Egg>(
      context,
      egg,
      actions
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

  bool _isVisibleFor(Egg egg) => switch (this) {
        addToStock => egg.hatchedAt != null && egg.birdId == null,
        _ => true,
      };

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
      EggActions.addToStock => _EggActionHelper.onAddToStock(context, egg),
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
        addToStock => context.tr.pop_up_menu.add_to_stock,
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
    final date = await promptDateValue(
      context,
      title: context.tr.egg.pick_fledged_date,
    );
    if (date == null) return;
    await cubit.updateEgg(
      egg.copyWith(fledgedAt: date, status: EggStatus.fledged),
    );
  }

  static Future<void> onAddToStock(BuildContext context, Egg egg) async {
    final cubit = context.read<BirdBreederCubit>();
    final resources = cubit.state.birdBreederResources;
    final pair = egg.broodResolved?.breedingPairResolved;
    final cageId = pair?.cageId ?? egg.cageId;
    final speciesId = egg.speciesId ?? pair?.speciesResolved?.id;
    // Remote mode: the logged-in user's linked contact. Local mode: that
    // currentUser is null, so fall back to the contact flagged as app user.
    final ownerId =
        s1<IAuthenticationService>().currentUser().asValue?.value?.contactId ??
            resources.contacts.appUser?.id;
    final bird = Bird.fromEgg(egg: egg).copyWith(
      cageId: cageId,
      speciesId: speciesId,
      ownerId: ownerId,
    );
    final created = await cubit.addBird(bird);
    if (created == null) {
      if (!context.mounted) return;
      s1.get<SnackbarService>().showError(context.tr.error.message);
      return;
    }
    await cubit.updateEgg(
      egg.copyWith(birdId: created.id, status: EggStatus.inStock),
    );
  }

  static Future<void> onMarkUnfertilized(BuildContext context, Egg egg) async {
    await context.read<BirdBreederCubit>().updateEgg(
          egg.copyWith(status: EggStatus.unfertilized, fertilizedAt: null),
        );
  }

  static Future<void> onMarkFertilized(BuildContext context, Egg egg) async {
    await context.read<BirdBreederCubit>().updateEgg(
          egg.copyWith(
            status: EggStatus.fertilized,
            fertilizedAt: DateTime.now(),
          ),
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
