import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/ressourcen_center/cages/cage_details_sheet.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_bird_row.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_ui.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';
import 'package:birdbreeder/theme/app_colors.dart';

@RoutePage(name: 'CageDetailRoute')
class CageDetailPage extends StatelessWidget {
  const CageDetailPage({required this.cage, super.key});

  final Cage cage;

  IconData _typeIcon(CageType? type) {
    switch (type) {
      case CageType.breedingBox:
        return AppIcons.cageBreedingBox;
      case CageType.quarantine:
        return AppIcons.cageQuarantine;
      case CageType.aviary:
      case null:
        return AppIcons.cageAviary;
    }
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final resources =
        context.watch<BirdBreederCubit>().state.birdBreederResources;
    final current = resources.cages.firstWhere(
      (c) => c.id == cage.id,
      orElse: () => cage,
    );
    final birds = resources.birds.relevantBirds
        .where((b) => b.cageId == current.id)
        .toList();
    final rawCapacity = current.capacity ?? 0;
    final occupied = birds.length;
    final capacity = rawCapacity > occupied ? rawCapacity : occupied;
    final ratio = capacity > 0 ? occupied / capacity : 0.0;
    final full = capacity > 0 && occupied >= capacity;

    final cagesTr = context.tr.cages;
    return ResourceScaffold(
      titleMain: (current.name?.isNotEmpty ?? false)
          ? current.name!
          : cagesTr.detail_title,
      titleSub: current.type?.getDisplayName(context) ?? '',
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero
            Container(
              color: cs.surface,
              padding: const EdgeInsets.fromLTRB(16, 6, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        _typeIcon(current.type),
                        size: 20,
                        color: cs.primary,
                      ),
                      const SizedBox(width: 8),
                      if (current.location != null &&
                          current.location!.isNotEmpty)
                        _Pill(
                          icon: AppIcons.locationOnOutlined,
                          label: current.location!,
                          fg: cs.onSurfaceVariant,
                          bg: cs.surfaceContainer,
                        ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  // Capacity card
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: cs.surfaceContainer,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Text(
                                'BELEGUNG',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1,
                                  color: cs.onSurfaceVariant,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '$occupied',
                              style: TextStyle(
                                fontFamily: 'monospace',
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: cs.onSurface,
                                height: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 2),
                              child: Text(
                                '/$capacity',
                                style: TextStyle(
                                  fontFamily: 'monospace',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: cs.outline,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 9,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: full
                                    ? context.appColors.expense.withValues(
                                        alpha: 0.15,
                                      )
                                    : context.appColors.income.withValues(
                                        alpha: 0.15,
                                      ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Text(
                                full ? 'VOLL' : '${capacity - occupied} frei',
                                style: TextStyle(
                                  fontFamily: 'monospace',
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: full
                                      ? context.appColors.expense
                                      : context.appColors.income,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        _CapacityBar(
                          ratio: ratio,
                          capacity: capacity,
                          full: full,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Stats
            StatsStrip(
              cells: [
                StatCell(
                  value: '$occupied',
                  label: cagesTr.occupied_label,
                  color: cs.primary,
                ),
                StatCell(
                  value: '${capacity > 0 ? capacity - occupied : 0}',
                  label: cagesTr.free_label,
                ),
                StatCell(
                  value: birds
                      .where((b) => b.cageId == current.id)
                      .length
                      .toString(),
                  label: cagesTr.birds_count_label,
                  color: cs.tertiary,
                ),
              ],
            ),
            // Body
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionLabel(
                    icon: AppIcons.species,
                    label: context.tr.species.birds_in_stock,
                    count: birds.length,
                  ),
                  if (birds.isEmpty)
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 22),
                      decoration: BoxDecoration(
                        color: cs.surface,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: cs.outlineVariant),
                      ),
                      child: Text(
                        context.tr.species.no_birds,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: cs.onSurfaceVariant,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    )
                  else
                    Container(
                      decoration: BoxDecoration(
                        color: cs.surface,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: cs.outlineVariant),
                      ),
                      child: Column(
                        children: [
                          for (var i = 0; i < birds.length && i < 8; i++)
                            ResourceBirdRow(
                              bird: birds[i],
                              last: i == birds.length - 1 || i == 7,
                            ),
                        ],
                      ),
                    ),
                  SectionLabel(
                    icon: AppIcons.notes,
                    label: context.tr.common.notes,
                  ),
                  NotesCard(text: current.notes ?? current.description),
                  DetailActionRow(
                    onEdit: () => openSheet(
                      context,
                      CageDetailsSheet(initialCage: current),
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

  void _confirmDelete(BuildContext context, Cage cage, int usage) {
    final cubit = context.read<BirdBreederCubit>();
    final router = context.router;
    final tr = context.tr;
    DeleteDialog.show(
      context: context,
      title: tr.cages.delete,
      content: usage > 0
          ? tr.resources.delete.with_usage(Usage: usage)
          : tr.dialog.delete_entry.content,
      onDelete: () async {
        await cubit.deleteCage(cage);
        router.pop();
      },
    );
  }
}

class _Pill extends StatelessWidget {
  const _Pill({
    required this.icon,
    required this.label,
    required this.fg,
    required this.bg,
  });

  final IconData icon;
  final String label;
  final Color fg;
  final Color bg;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 11, color: fg),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.3,
              color: fg,
            ),
          ),
        ],
      ),
    );
  }
}

class _CapacityBar extends StatelessWidget {
  const _CapacityBar({
    required this.ratio,
    required this.capacity,
    required this.full,
  });

  final double ratio;
  final int capacity;
  final bool full;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final fillColor = full
        ? context.appColors.expense
        : ratio > 0.7
            ? cs.tertiary
            : cs.primary;
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        height: 10,
        decoration: BoxDecoration(
          color: cs.surface,
          border: Border.all(color: cs.outlineVariant),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Stack(
          children: [
            FractionallySizedBox(
              widthFactor: ratio.clamp(0.04, 1.0),
              child: Container(color: fillColor),
            ),
            if (capacity > 0 && capacity <= 24)
              Row(
                children: [
                  for (var i = 0; i < capacity; i++)
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right: i == capacity - 1
                                ? BorderSide.none
                                : BorderSide(
                                    color: Colors.black.withValues(
                                      alpha: 0.06,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
