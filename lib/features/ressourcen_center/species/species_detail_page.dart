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
              child: Row(
                spacing: 12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SpeciesAvatar(
                    imageUrl: current.imageUrl,
                    name: current.name,
                    size: 96,
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
                  Expanded(
                    flex: incub,
                    child: ColoredBox(
                      color: context.appColors.sexFemale.withValues(
                        alpha: 0.18,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            AppIcons.egg,
                            size: 14,
                            color: context.appColors.sexFemale,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            speciesTr.incubation,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: context.appColors.sexFemale,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: fledge,
                    child: ColoredBox(
                      color: cs.tertiaryContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            AppIcons.pets,
                            size: 14,
                            color: cs.onTertiaryContainer,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            speciesTr.chick_until_fledge,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: cs.onTertiaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                flex: incub,
                child: Text(
                  speciesTr.hatch_label(Day: incub),
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 9,
                    fontWeight: FontWeight.w600,
                    color: cs.onSurfaceVariant,
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Expanded(
                flex: fledge,
                child: Text(
                  speciesTr.fledge_label(Day: total),
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 9,
                    fontWeight: FontWeight.w600,
                    color: cs.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
