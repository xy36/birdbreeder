import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/core/extensions/contact_extension.dart';
import 'package:birdbreeder/core/extensions/egg_extension.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

/// Egg mutations triggered from the lifecycle editor sheet.
///
/// Each value maps to a single mutation; presentation (labels, icons,
/// visibility) lives in the sheet, not here.
enum EggActions {
  setLaid,
  markFertilized,
  markHatched,
  markFledged,
  markUnfertilized,
  markDied,
  resetFertilized,
  resetUnfertilized,
  resetHatched,
  resetFledged,
  resetDied,
  setRingnumber,
  setColor,
  addToStock,
  delete;

  Future<void> execute(BuildContext context, Egg egg) async {
    return switch (this) {
      EggActions.setLaid => _EggActionHelper.onSetLaid(context, egg),
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
      EggActions.resetFertilized =>
        _EggActionHelper.onResetFertilized(context, egg),
      EggActions.resetUnfertilized =>
        _EggActionHelper.onResetUnfertilized(context, egg),
      EggActions.resetHatched => _EggActionHelper.onResetHatched(context, egg),
      EggActions.resetFledged => _EggActionHelper.onResetFledged(context, egg),
      EggActions.resetDied => _EggActionHelper.onResetDied(context, egg),
      EggActions.delete => _EggActionHelper.onDelete(context, egg),
    };
  }
}

class _EggActionHelper {
  /// Persists [updated] and keeps the stored [Egg.status] in sync with the
  /// status derived from the milestone dates.
  static Future<void> _save(BirdBreederCubit cubit, Egg updated) =>
      cubit.updateEgg(updated.copyWith(status: updated.effectiveStatus));

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

  static Future<void> onSetLaid(BuildContext context, Egg egg) async {
    final cubit = context.read<BirdBreederCubit>();
    final date = await promptDateValue(
      context,
      title: context.tr.egg.pick_laid_date,
    );
    if (date == null) return;
    await _save(cubit, egg.copyWith(laidAt: date));
  }

  static Future<void> onMarkHatched(BuildContext context, Egg egg) async {
    final cubit = context.read<BirdBreederCubit>();
    final date = await promptDateValue(
      context,
      title: context.tr.egg.pick_hatched_date,
    );
    if (date == null) return;
    await _save(cubit, egg.copyWith(hatchedAt: date));
  }

  static Future<void> onMarkFledged(BuildContext context, Egg egg) async {
    final cubit = context.read<BirdBreederCubit>();
    final date = await promptDateValue(
      context,
      title: context.tr.egg.pick_fledged_date,
    );
    if (date == null) return;
    await _save(cubit, egg.copyWith(fledgedAt: date));
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
      fatherId: pair?.fatherId,
      motherId: pair?.motherId,
      unknownLifecycle: false,
    );
    final created = await cubit.addBird(bird);
    if (created == null) {
      if (!context.mounted) return;
      s1.get<SnackbarService>().showError(context.tr.error.message);
      return;
    }
    await _save(cubit, egg.copyWith(birdId: created.id));
  }

  static Future<void> onMarkUnfertilized(BuildContext context, Egg egg) async {
    final cubit = context.read<BirdBreederCubit>();
    final date = await promptDateValue(
      context,
      title: context.tr.egg.pick_unfertilized_date,
    );
    if (date == null) return;
    await _save(
      cubit,
      egg.copyWith(unfertilizedAt: date, fertilizedAt: null),
    );
  }

  static Future<void> onMarkFertilized(BuildContext context, Egg egg) async {
    final cubit = context.read<BirdBreederCubit>();
    final date = await promptDateValue(
      context,
      title: context.tr.egg.pick_fertilized_date,
    );
    if (date == null) return;
    await _save(
      cubit,
      egg.copyWith(fertilizedAt: date, unfertilizedAt: null),
    );
  }

  static Future<void> onMarkDied(BuildContext context, Egg egg) async {
    final cubit = context.read<BirdBreederCubit>();
    final date = await promptDateValue(
      context,
      title: context.tr.egg.pick_died_date,
    );
    if (date == null) return;
    await _save(cubit, egg.copyWith(diedAt: date));
  }

  static Future<void> onResetFertilized(BuildContext context, Egg egg) async {
    await _save(
      context.read<BirdBreederCubit>(),
      egg.copyWith(fertilizedAt: null),
    );
  }

  static Future<void> onResetUnfertilized(BuildContext context, Egg egg) async {
    await _save(
      context.read<BirdBreederCubit>(),
      egg.copyWith(unfertilizedAt: null),
    );
  }

  static Future<void> onResetHatched(BuildContext context, Egg egg) async {
    await _save(
      context.read<BirdBreederCubit>(),
      egg.copyWith(hatchedAt: null),
    );
  }

  static Future<void> onResetFledged(BuildContext context, Egg egg) async {
    await _save(
      context.read<BirdBreederCubit>(),
      egg.copyWith(fledgedAt: null),
    );
  }

  static Future<void> onResetDied(BuildContext context, Egg egg) async {
    await _save(context.read<BirdBreederCubit>(), egg.copyWith(diedAt: null));
  }

  static Future<void> onDelete(BuildContext context, Egg egg) async {
    await context.read<BirdBreederCubit>().deleteEgg(egg);
  }
}
