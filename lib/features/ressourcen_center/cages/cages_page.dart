import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/ressourcen_center/cages/cage_details_sheet.dart';
import 'package:birdbreeder/features/ressourcen_center/cages/cubit/cages_filter_cubit.dart';
import 'package:birdbreeder/features/ressourcen_center/cages/cubit/cages_filter_state.dart';
import 'package:birdbreeder/features/ressourcen_center/cages/widgets/cage_row.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_overview_ui.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/sort_chip.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

@RoutePage(name: 'CagesTabRoute')
class CagesPage extends StatelessWidget {
  const CagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CagesFilterCubit(),
      child: const _CagesTabView(),
    );
  }
}

class _CagesTabView extends StatelessWidget {
  const _CagesTabView();

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final res = context.watch<BirdBreederCubit>().state.birdBreederResources;
    final filterCubit = context.watch<CagesFilterCubit>();
    final filterState = filterCubit.state;
    final cages = res.cages;
    final occByCage = <String, int>{
      for (final c in cages)
        c.id: res.birds.relevantBirds.where((b) => b.cageId == c.id).length,
    };

    final totalOccupied = occByCage.values.fold<int>(0, (a, b) => a + b);
    final totalCapacity = cages.fold<int>(0, (a, c) {
      final cap = c.capacity ?? 0;
      final occ = occByCage[c.id] ?? 0;
      return a + (cap > occ ? cap : occ);
    });
    final ratio = totalCapacity == 0 ? 0.0 : totalOccupied / totalCapacity;

    final filtered = filterCubit.filterCages(cages, occByCage);
    final byLocation = filterCubit.groupByLocation(filtered);

    OverviewChipData chip(
      CageTypeFilter f,
      String label,
      int count, {
      IconData? icon,
    }) =>
        OverviewChipData(
          label: label,
          icon: icon,
          count: count,
          active: filterState.typeFilter == f,
          onTap: () => filterCubit.setTypeFilter(f),
        );

    final cagesTr = context.tr.cages;
    final chips = <OverviewChipData>[
      chip(CageTypeFilter.all, cagesTr.filters.all, cages.length),
      chip(
        CageTypeFilter.aviary,
        cagesTr.filters.aviaries,
        cages.where((c) => c.type == CageType.aviary).length,
        icon: AppIcons.cageAviary,
      ),
      chip(
        CageTypeFilter.breedingBox,
        cagesTr.filters.breeding_boxes,
        cages.where((c) => c.type == CageType.breedingBox).length,
        icon: AppIcons.cageBreedingBox,
      ),
      chip(
        CageTypeFilter.quarantine,
        cagesTr.filters.quarantine,
        cages.where((c) => c.type == CageType.quarantine).length,
        icon: AppIcons.cageQuarantine,
      ),
      chip(
        CageTypeFilter.empty,
        cagesTr.filters.empty,
        cages.where((c) => (occByCage[c.id] ?? 0) == 0).length,
      ),
    ];

    return Scaffold(
      appBar: SharedAppBarWithDrawer(title: context.tr.cages.title),
      body: OverviewScaffoldBody(
        summary: OverviewSummary(
          total: cages.length,
          label: cagesTr.list_title,
          meta: cagesTr.places_occupied(
            Occupied: totalOccupied,
            Capacity: totalCapacity,
          ),
          bottom: Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 14, 10),
            child: Row(
              children: [
                Text(
                  cagesTr.occupancy.toUpperCase(),
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                    color: cs.onSurfaceVariant,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: Stack(
                      children: [
                        Container(height: 6, color: cs.surfaceContainer),
                        FractionallySizedBox(
                          widthFactor: ratio.clamp(0.0, 1.0),
                          child: Container(height: 6, color: cs.primary),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '${(ratio * 100).round()}%',
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: cs.onSurface,
                  ),
                ),
              ],
            ),
          ),
          chips: chips,
          trailing: SortChip<CageSortField>(
            current: filterState.sortField,
            ascending: filterState.sortAsc,
            options: CageSortField.values,
            labelFor: (ctx, f) => switch (f) {
              CageSortField.name => ctx.tr.resources.sort.by.name,
              CageSortField.created => ctx.tr.resources.sort.by.created,
              CageSortField.capacity => ctx.tr.resources.sort.by.capacity,
            },
            onChanged: filterCubit.setSort,
          ),
        ),
        bodyChildren: [
          for (final entry in byLocation.entries) ...[
            GroupLabel(
              icon: AppIcons.locationOnOutlined,
              label: entry.key,
              count: entry.value.length,
            ),
            GroupedList(
              children: [
                for (var i = 0; i < entry.value.length; i++)
                  CageRow(
                    cage: entry.value[i],
                    occupied: occByCage[entry.value[i].id] ?? 0,
                    last: i == entry.value.length - 1,
                    onTap: () => context.router.push(
                      CageDetailRoute(cage: entry.value[i]),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 4),
          ],
          if (filtered.isEmpty)
            Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                cagesTr.empty_filter,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: cs.onSurfaceVariant,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
        ],
        bottomBar: OverviewBottomBar(
          onSearch: filterCubit.setQuery,
          onAdd: () => openSheet<void>(context, const CageDetailsSheet()),
        ),
      ),
    );
  }
}
