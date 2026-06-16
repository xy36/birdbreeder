import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/ressourcen_center/colors/color_details_sheet.dart';
import 'package:birdbreeder/features/ressourcen_center/colors/cubit/colors_filter_cubit.dart';
import 'package:birdbreeder/features/ressourcen_center/colors/cubit/colors_filter_state.dart';
import 'package:birdbreeder/features/ressourcen_center/colors/widgets/color_row.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_overview_ui.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/utils.dart';
import 'package:birdbreeder/shared/widgets/sort_chip.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

@RoutePage(name: 'ColorsTabRoute')
class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ColorsFilterCubit(),
      child: const _ColorsTabView(),
    );
  }
}

class _ColorsTabView extends StatelessWidget {
  const _ColorsTabView();

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final res = context.watch<BirdBreederCubit>().state.birdBreederResources;
    final filterCubit = context.watch<ColorsFilterCubit>();
    final filterState = filterCubit.state;
    final colors = res.colors;

    final usageById = <String, int>{
      for (final c in colors)
        c.id: res.birds.relevantBirds.where((b) => b.colorId == c.id).length,
    };

    final filtered = filterCubit.filterColors(colors);

    Color swatchOf(BirdColor c) {
      try {
        if (c.hex != null && c.hex!.isNotEmpty) return hexToColor(c.hex!);
      } on FormatException {
        // fall through
      }
      return cs.surfaceContainer;
    }

    final colorsTr = context.tr.colors;
    return Scaffold(
      appBar: SharedAppBarWithDrawer(title: colorsTr.title),
      body: OverviewScaffoldBody(
        summary: OverviewSummary(
          total: colors.length,
          label: colorsTr.list_title,
          trailing: SortChip<ColorSortField>(
            current: filterState.sortField,
            ascending: filterState.sortAsc,
            options: ColorSortField.values,
            labelFor: (ctx, f) => switch (f) {
              ColorSortField.name => ctx.tr.resources.sort.by.name,
              ColorSortField.created => ctx.tr.resources.sort.by.created,
              ColorSortField.hex => ctx.tr.resources.sort.by.hex,
            },
            onChanged: filterCubit.setSort,
          ),
        ),
        bodyChildren: [
          if (filtered.isEmpty)
            Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                colorsTr.empty,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: cs.onSurfaceVariant,
                  fontStyle: FontStyle.italic,
                ),
              ),
            )
          else
            GroupedList(
              children: [
                for (var i = 0; i < filtered.length; i++)
                  ColorRow(
                    color: filtered[i],
                    swatch: swatchOf(filtered[i]),
                    usage: usageById[filtered[i].id] ?? 0,
                    last: i == filtered.length - 1,
                    onTap: () => context.router.push(
                      ColorDetailRoute(color: filtered[i]),
                    ),
                  ),
              ],
            ),
        ],
        bottomBar: OverviewBottomBar(
          onSearch: filterCubit.setQuery,
          onAdd: () => openSheet<void>(context, const ColorDetailsSheet()),
        ),
      ),
    );
  }
}
