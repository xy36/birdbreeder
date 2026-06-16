import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/ressourcen_center/species/cubit/species_filter_cubit.dart';
import 'package:birdbreeder/features/ressourcen_center/species/cubit/species_filter_state.dart';
import 'package:birdbreeder/features/ressourcen_center/species/species_details_sheet.dart';
import 'package:birdbreeder/features/ressourcen_center/species/widgets/species_card.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_overview_ui.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/sort_chip.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

@RoutePage(name: 'SpeciesTabRoute')
class SpeciesPage extends StatelessWidget {
  const SpeciesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SpeciesFilterCubit(),
      child: const _SpeciesTabView(),
    );
  }
}

class _SpeciesTabView extends StatelessWidget {
  const _SpeciesTabView();

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final res = context.watch<BirdBreederCubit>().state.birdBreederResources;
    final filterCubit = context.watch<SpeciesFilterCubit>();
    final filterState = filterCubit.state;
    final species = res.species;
    final usageBySpecies = <String, int>{
      for (final s in species)
        s.id: res.birds.relevantBirds.where((b) => b.speciesId == s.id).length,
    };
    final totalBirds = usageBySpecies.values.fold<int>(0, (a, b) => a + b);
    final filtered = filterCubit.filterSpecies(species);

    final speciesTr = context.tr.species;
    return Scaffold(
      appBar: SharedAppBarWithDrawer(title: speciesTr.title),
      body: OverviewScaffoldBody(
        summary: OverviewSummary(
          total: species.length,
          label: speciesTr.title,
          meta: '$totalBirds ${speciesTr.birds_in_stock}',
          trailing: SortChip<SpeciesSortField>(
            current: filterState.sortField,
            ascending: filterState.sortAsc,
            options: SpeciesSortField.values,
            labelFor: (ctx, f) => switch (f) {
              SpeciesSortField.name => ctx.tr.resources.sort.by.name,
              SpeciesSortField.latName => ctx.tr.resources.sort.by.lat_name,
              SpeciesSortField.created => ctx.tr.resources.sort.by.created,
            },
            onChanged: filterCubit.setSort,
          ),
        ),
        bodyChildren: [
          for (final sp in filtered)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SpeciesCard(
                species: sp,
                birds: usageBySpecies[sp.id] ?? 0,
                onTap: () =>
                    context.router.push(SpeciesDetailRoute(species: sp)),
              ),
            ),
          if (filtered.isEmpty)
            Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                speciesTr.empty,
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
          onAdd: () => openSheet<void>(context, const SpeciesDetailsSheet()),
        ),
      ),
    );
  }
}
