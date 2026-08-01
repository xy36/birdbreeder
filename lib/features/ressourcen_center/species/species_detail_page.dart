import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/ressourcen_center/species/species_details_sheet.dart';
import 'package:birdbreeder/features/ressourcen_center/species/widgets/species_avatar.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_bird_row.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_ui.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';
import 'package:birdbreeder/theme/app_colors.dart';

@RoutePage(name: 'SpeciesDetailRoute')
class SpeciesDetailPage extends StatelessWidget {
  const SpeciesDetailPage({required this.species, super.key});

  final Species species;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final res = context.watch<BirdBreederCubit>().state.birdBreederResources;
    final current = res.species.firstWhere(
      (s) => s.id == species.id,
      orElse: () => species,
    );
    final birds = res.birds.relevantBirds
        .where((b) => b.speciesId == current.id)
        .toList();
    final males = birds.where((b) => b.sex == Sex.male).length;
    final females = birds.where((b) => b.sex == Sex.female).length;
    final incub = current.incubationDays ?? 0;
    final fledge = current.fledgeDays ?? 0;
    final totalDays = incub + fledge;

    final speciesTr = context.tr.species;
    return ResourceScaffold(
      titleMain: current.name ?? speciesTr.detail_title,
      titleSub: current.latName ?? '',
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: cs.surface,
              padding: const EdgeInsets.fromLTRB(16, 6, 16, 16),
              child: Column(
                children: [
                  Row(
                    spacing: 12,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SpeciesAvatar(
                        imageUrl: current.imageUrl,
                        name: current.name,
                        size: 96,
                        openLightbox: true,
                      ),
                      if (totalDays > 0)
                        Expanded(
                          child: _LifecycleCard(
                            incub: incub,
                            fledge: fledge,
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    spacing: 8,
                    children: [
                      Expanded(
                        child: _FlagStatus(
                          active: current.endangered,
                          activeLabel: speciesTr.endangered,
                          inactiveLabel: speciesTr.endangered_not,
                        ),
                      ),
                      Expanded(
                        child: _FlagStatus(
                          active: current.reportable,
                          activeLabel: speciesTr.reportable,
                          inactiveLabel: speciesTr.reportable_not,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            StatsStrip(
              cells: [
                StatCell(
                  value: '${birds.length}',
                  label: speciesTr.stats.stock,
                  color: cs.tertiary,
                ),
                StatCell(
                  value: '$males',
                  label:
                      '${Sex.male.symbol} ${Sex.male.getDisplayName(context)}',
                  color: context.appColors.sexMale,
                ),
                StatCell(
                  value: '$females',
                  label:
                      '${Sex.female.symbol} ${Sex.female.getDisplayName(context)}',
                  color: context.appColors.sexFemale,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionLabel(
                    icon: AppIcons.species,
                    label: speciesTr.birds_in_stock,
                    count: birds.length,
                  ),
                  if (birds.isEmpty)
                    _empty(context, speciesTr.no_birds)
                  else
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        color: cs.surface,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: cs.outlineVariant),
                      ),
                      child: ListView.builder(
                        itemCount: birds.length,
                        itemBuilder: (context, i) {
                          return ResourceBirdRow(
                            bird: birds[i],
                            last: i == birds.length - 1,
                          );
                        },
                      ),
                    ),
                  SectionLabel(
                    icon: AppIcons.notes,
                    label: context.tr.common.notes,
                  ),
                  NotesCard(text: current.notes),
                  DetailActionRow(
                    onEdit: () => openSheet<void>(
                      context,
                      SpeciesDetailsSheet(initialSpecies: current),
                    ),
                    secondaryIcon: AppIcons.delete,
                    onSecondary: () =>
                        _confirmDelete(context, current, birds.length),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _confirmDelete(BuildContext context, Species species, int usage) {
    final cubit = context.read<BirdBreederCubit>();
    final router = context.router;
    final tr = context.tr;
    DeleteDialog.show(
      context: context,
      title: tr.species.delete,
      content: usage > 0
          ? tr.resources.delete.with_usage(Usage: usage)
          : tr.dialog.delete_entry.content,
      onDelete: () async {
        await cubit.deleteSpecies(species);
        router.pop();
      },
    );
  }

  Widget _empty(BuildContext context, String label) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 22),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: cs.outlineVariant),
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: cs.onSurfaceVariant,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}

/// One legal flag of the species, always visible so the negative case reads
/// as a stated fact rather than a missing badge.
class _FlagStatus extends StatelessWidget {
  const _FlagStatus({
    required this.active,
    required this.activeLabel,
    required this.inactiveLabel,
  });

  final bool active;
  final String activeLabel;
  final String inactiveLabel;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final warn = context.appColors.statusWarning;
    final color = active ? warn : cs.onSurfaceVariant;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: active ? warn.withValues(alpha: 0.12) : cs.surface,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: active ? warn.withValues(alpha: 0.5) : cs.outlineVariant,
        ),
      ),
      child: Row(
        children: [
          Icon(
            active ? AppIcons.warning : AppIcons.check,
            size: 16,
            color: color,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              active ? activeLabel : inactiveLabel,
              maxLines: 2,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LifecycleCard extends StatelessWidget {
  const _LifecycleCard({required this.incub, required this.fledge});

  final int incub;
  final int fledge;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final total = incub + fledge;
    final speciesTr = context.tr.species;
    return Container(
      padding: const EdgeInsets.fromLTRB(14, 12, 14, 10),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: cs.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${speciesTr.section.lifecycle.toUpperCase()} · ${speciesTr.lifecycle_label_total(Total: total)}',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              color: cs.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              height: 36,
              child: Row(
                children: [
                  // Each phase only claims a share once it has a value, so a
                  // species with just one of the two durations still reads as
                  // a full bar rather than a stripe with an empty remainder.
                  if (incub > 0)
                    _LifecycleSegment(
                      flex: incub,
                      icon: AppIcons.egg,
                      label: speciesTr.incubation,
                      background:
                          context.appColors.sexFemale.withValues(alpha: 0.18),
                      foreground: context.appColors.sexFemale,
                    ),
                  if (fledge > 0)
                    _LifecycleSegment(
                      flex: fledge,
                      icon: AppIcons.pets,
                      label: speciesTr.chick_until_fledge,
                      background: cs.tertiaryContainer,
                      foreground: cs.onTertiaryContainer,
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              if (incub > 0)
                Expanded(
                  flex: incub,
                  child: _DayMark(text: speciesTr.hatch_label(Day: incub)),
                ),
              if (incub > 0 && fledge > 0) const SizedBox(width: 4),
              if (fledge > 0)
                Expanded(
                  flex: fledge,
                  child: _DayMark(text: speciesTr.fledge_label(Day: total)),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

/// One coloured phase of the lifecycle bar, sized by its share in days.
class _LifecycleSegment extends StatelessWidget {
  const _LifecycleSegment({
    required this.flex,
    required this.icon,
    required this.label,
    required this.background,
    required this.foreground,
  });

  final int flex;
  final IconData icon;
  final String label;
  final Color background;
  final Color foreground;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: ColoredBox(
        color: background,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 14, color: foreground),
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: foreground,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Day number printed under the end of a lifecycle phase.
class _DayMark extends StatelessWidget {
  const _DayMark({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) => Text(
        text,
        textAlign: TextAlign.right,
        style: TextStyle(
          fontFamily: 'monospace',
          fontSize: 9,
          fontWeight: FontWeight.w600,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      );
}
