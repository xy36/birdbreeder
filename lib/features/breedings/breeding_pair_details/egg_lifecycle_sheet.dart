import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/egg_extension.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/edit_section_divider.dart';
import 'package:birdbreeder/models/egg/egg_actions.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';

/// Opens the lifecycle editor for [egg] as a modal bottom sheet.
Future<void> showEggLifecycleSheet(BuildContext context, Egg egg) {
  return showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (_) => EggLifecycleSheet(eggId: egg.id),
  );
}

/// Edits a single egg by its milestones.
///
/// Each milestone is one row: tapping sets/edits its date, the trailing ✕
/// clears it. All mutations delegate to [EggActions] so the date prompts and
/// status mirroring stay in one place. The egg is resolved fresh from state so
/// the sheet reflects edits live without closing.
class EggLifecycleSheet extends StatelessWidget {
  const EggLifecycleSheet({required this.eggId, super.key});

  final String eggId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBreederCubit, BirdBreederState>(
      builder: (context, state) {
        final egg = state.birdBreederResources.eggs
            .firstOrNullWhere((e) => e.id == eggId);
        if (egg == null) return const SizedBox.shrink();

        final tr = context.tr;
        final (bg, fg, _, label) = egg.effectiveStatus.getDisplayData(context);

        return SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _Header(
                  title: tr.egg.lifecycle.title(Number: egg.number),
                  statusLabel: label,
                  bg: bg,
                  fg: fg,
                ),
                EditSectionDivider(
                  icon: AppIcons.egg,
                  label: tr.egg.lifecycle.section_cycle,
                  first: true,
                ),
                _MilestoneRow(
                  icon: AppIcons.eggStatusLaid,
                  label: tr.egg.status.laid,
                  date: egg.laidAt,
                  onSet: () => EggActions.setLaid.execute(context, egg),
                ),
                _MilestoneRow(
                  icon: AppIcons.eggStatusFertilized,
                  label: tr.egg.status.fertilized,
                  date: egg.fertilizedAt,
                  onSet: () => EggActions.markFertilized.execute(context, egg),
                  onClear: () =>
                      EggActions.resetFertilized.execute(context, egg),
                ),
                _MilestoneRow(
                  icon: AppIcons.hatched,
                  label: tr.egg.status.hatched,
                  date: egg.hatchedAt,
                  onSet: () => EggActions.markHatched.execute(context, egg),
                  onClear: () => EggActions.resetHatched.execute(context, egg),
                ),
                _MilestoneRow(
                  icon: AppIcons.fledged,
                  label: tr.egg.status.fledged,
                  date: egg.fledgedAt,
                  onSet: () => EggActions.markFledged.execute(context, egg),
                  onClear: () => EggActions.resetFledged.execute(context, egg),
                ),
                _MilestoneRow(
                  icon: AppIcons.eggStatusUnfertilized,
                  label: tr.egg.status.unfertilized,
                  date: egg.unfertilizedAt,
                  onSet: () =>
                      EggActions.markUnfertilized.execute(context, egg),
                  onClear: () =>
                      EggActions.resetUnfertilized.execute(context, egg),
                ),
                _MilestoneRow(
                  icon: AppIcons.eggStatusDead,
                  label: tr.egg.status.dead,
                  date: egg.diedAt,
                  onSet: () => EggActions.markDied.execute(context, egg),
                  onClear: () => EggActions.resetDied.execute(context, egg),
                ),
                EditSectionDivider(
                  icon: AppIcons.edit,
                  label: tr.egg.lifecycle.section_details,
                ),
                _DetailRow(
                  icon: AppIcons.ringNumber,
                  label: tr.pop_up_menu.set_ringnumber,
                  value: egg.ringnumber,
                  onTap: () => EggActions.setRingnumber.execute(context, egg),
                ),
                _DetailRow(
                  icon: AppIcons.color,
                  label: tr.pop_up_menu.set_color,
                  value: egg.colorResolved?.name,
                  onTap: () => EggActions.setColor.execute(context, egg),
                ),
                const SizedBox(height: 16),
                _Footer(egg: egg),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.title,
    required this.statusLabel,
    required this.bg,
    required this.fg,
  });

  final String title;
  final String statusLabel;
  final Color bg;
  final Color fg;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: bg,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            statusLabel.toUpperCase(),
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5,
              color: fg,
            ),
          ),
        ),
      ],
    );
  }
}

class _MilestoneRow extends StatelessWidget {
  const _MilestoneRow({
    required this.icon,
    required this.label,
    required this.date,
    required this.onSet,
    this.onClear,
  });

  final IconData icon;
  final String label;
  final DateTime? date;
  final VoidCallback onSet;

  /// When null the milestone cannot be cleared (e.g. the required laid date).
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isSet = date != null;
    final dateText = isSet
        ? MaterialLocalizations.of(context).formatShortDate(date!)
        : context.tr.egg.lifecycle.set_date;

    return InkWell(
      onTap: onSet,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        child: Row(
          children: [
            Icon(icon, size: 18, color: cs.onSurfaceVariant),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Text(
              dateText,
              style: TextStyle(
                fontSize: 13,
                fontWeight: isSet ? FontWeight.w600 : FontWeight.w400,
                color: isSet ? cs.onSurface : cs.onSurfaceVariant,
              ),
            ),
            SizedBox(
              width: 40,
              child: isSet && onClear != null
                  ? IconButton(
                      icon: const Icon(AppIcons.close, size: 18),
                      visualDensity: VisualDensity.compact,
                      onPressed: onClear,
                    )
                  : const Icon(AppIcons.chevronRight, size: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({
    required this.icon,
    required this.label,
    required this.value,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final String? value;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final hasValue = value != null && value!.trim().isNotEmpty;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        child: Row(
          children: [
            Icon(icon, size: 18, color: cs.onSurfaceVariant),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            if (hasValue)
              Text(
                value!,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: cs.onSurface,
                ),
              ),
            const SizedBox(width: 4),
            const Icon(AppIcons.chevronRight, size: 18),
          ],
        ),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({required this.egg});

  final Egg egg;

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;
    final bird = egg.birdResolved;
    final canAddToStock = egg.hatchedAt != null && egg.birdId == null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (bird != null)
          FilledButton.tonalIcon(
            icon: const Icon(AppIcons.eggStatusInStock, size: 18),
            label: Text(tr.egg.in_stock),
            onPressed: () => context.router.push(BirdRoute(bird: bird)),
          )
        else if (canAddToStock)
          FilledButton.icon(
            icon: const Icon(AppIcons.eggStatusInStock, size: 18),
            label: Text(tr.pop_up_menu.add_to_stock),
            onPressed: () => EggActions.addToStock.execute(context, egg),
          ),
        const SizedBox(height: 8),
        TextButton.icon(
          icon: Icon(AppIcons.delete, size: 18, color: cs(context).error),
          label: Text(
            tr.pop_up_menu.delete,
            style: TextStyle(color: cs(context).error),
          ),
          onPressed: () => _confirmDelete(context),
        ),
      ],
    );
  }

  ColorScheme cs(BuildContext context) => Theme.of(context).colorScheme;

  Future<void> _confirmDelete(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(context.tr.egg.lifecycle.confirm_delete),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: Text(context.tr.common.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, true),
            child: Text(context.tr.pop_up_menu.delete),
          ),
        ],
      ),
    );
    if (confirmed != true || !context.mounted) return;
    Navigator.pop(context);
    await EggActions.delete.execute(context, egg);
  }
}
