import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/contact_extension.dart';
import 'package:birdbreeder/core/extensions/widget_extensions.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/cubit/birds_filter_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/bird_cage_group.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/bird_filter_bar.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/bird_row.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/birds_roster_summary.dart';
import 'package:birdbreeder/models/bird/bird_filter.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/generic_search_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/utils/natural_compare.dart';
import 'package:birdbreeder/shared/widgets/bird_breeder_wrapper.dart';
import 'package:birdbreeder/shared/widgets/bottom_search_bar.dart';
import 'package:birdbreeder/shared/widgets/sort_chip.dart';

enum BirdOverviewMode {
  picker,
  viewer,
}

/// One cage and the birds it currently holds, for the grouped overview.
typedef _CageGroup = ({Cage? cage, String name, List<Bird> birds});

class BirdsOverviewScreen extends StatefulWidget {
  const BirdsOverviewScreen({
    super.key,
    this.mode = BirdOverviewMode.viewer,
    this.scrollController,
  });

  final BirdOverviewMode mode;
  final ScrollController? scrollController;

  @override
  State<BirdsOverviewScreen> createState() => _BirdsOverviewScreenState();
}

class _BirdsOverviewScreenState extends State<BirdsOverviewScreen> {
  /// Whether birds are grouped into cage cards (true) or shown as a flat list.
  bool _grouped = true;

  void openBird(Bird bird) {
    context.router.push(BirdRoute(bird: bird));
  }

  void pickBird(Bird bird) {
    context.router.maybePop(bird);
  }

  void onTapBird(Bird bird) {
    widget.mode == BirdOverviewMode.picker ? pickBird(bird) : openBird(bird);
  }

  /// Buckets birds by their cage, ordered by cage name with the
  /// "no cage" bucket last. Order within a group preserves the incoming
  /// (already filtered + sorted) order.
  List<_CageGroup> _groupByCage(List<Bird> birds) {
    final buckets = <String?, List<Bird>>{};
    for (final bird in birds) {
      buckets.putIfAbsent(bird.cageId, () => []).add(bird);
    }

    final groups = buckets.entries.map((entry) {
      final cage = entry.value.first.cageResolved;
      return (
        cage: cage,
        name: cage?.name ?? context.tr.birds.overview.no_cage,
        birds: entry.value,
      );
    }).toList();

    return groups
      ..sort((a, b) {
        if (a.cage == null) return 1;
        if (b.cage == null) return -1;
        return naturalCompare(a.name, b.name);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBarWithDrawer(
        title: context.tr.birds.title,
        hideMenuButton: widget.mode == BirdOverviewMode.picker,
        actions: [
          IconButton(
            icon: Icon(_grouped ? AppIcons.list : AppIcons.cageAviary),
            tooltip: _grouped
                ? context.tr.birds.overview.view_list
                : context.tr.birds.overview.view_grouped,
            onPressed: () => setState(() => _grouped = !_grouped),
          ),
        ],
      ),
      body: BlocListener<BirdBreederCubit, BirdBreederState>(
        listener: (context, state) {
          final appUserId = state.birdBreederResources.contacts.appUser?.id;
          if (appUserId != null) {
            context.read<BirdsFilterCubit>().initOwnerDefault(appUserId);
          }
        },
        child: BirdBreederWrapper(
          child: Column(
            children: [
              const BirdFilterBar(),
              Expanded(
                child: BlocBuilder<BirdBreederCubit, BirdBreederState>(
                  builder: (context, state) {
                    return BlocBuilder<BirdsFilterCubit, BirdFilter>(
                      builder: (context, filter) {
                        final birds = state.birdBreederResources.birds;

                        final list = context
                            .watch<BirdsFilterCubit>()
                            .filterBirds(birds);
                        context.read<BirdSearchCubit>().setItems(list);

                        return BlocBuilder<BirdSearchCubit, Query>(
                          builder: (context, _) {
                            final searchedBirds =
                                context.read<BirdSearchCubit>().searchedItems;
                            final groups = _groupByCage(searchedBirds);
                            final forSale = searchedBirds
                                .where(
                                  (b) =>
                                      b.saleStatus == SaleStatus.listed &&
                                      b.askingPrice != null,
                                )
                                .length;

                            return Column(
                              children: [
                                BirdsRosterSummary(
                                  total: searchedBirds.length,
                                  cageCount: groups.length,
                                  forSale: forSale,
                                  trailing: SortChip<BirdSort>(
                                    current: filter.sort ?? BirdSort.updated,
                                    ascending: filter.sortAscending,
                                    options: BirdSort.values,
                                    labelFor: (ctx, s) => s.getDisplayName(ctx),
                                    onChanged: (s, asc) => context
                                        .read<BirdsFilterCubit>()
                                        .setSort(s, asc),
                                  ),
                                ),
                                Expanded(
                                  child: (_grouped
                                          ? _buildGroupedList(groups)
                                          : _buildFlatList(searchedBirds))
                                      .withRefresher(
                                    onRefresh: () async {
                                      await context
                                          .read<BirdBreederCubit>()
                                          .fetchBirds();
                                    },
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: BottomSearchBar(
        onSearch: (query) {
          context.read<BirdSearchCubit>().setSearch(query);
        },
        onAdd: () async {
          await context.router.push(BirdRoute(bird: null));
        },
      ),
    );
  }

  static const _physics =
      AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics());

  Widget _emptyList() {
    return ListView(
      physics: _physics,
      controller: widget.scrollController,
      children: [
        const SizedBox(height: 120),
        Center(
          child: Text(
            context.tr.birds.overview.empty,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ],
    );
  }

  /// Cage-grouped view: one [BirdCageGroup] card per cage.
  Widget _buildGroupedList(List<_CageGroup> groups) {
    if (groups.isEmpty) return _emptyList();

    return ListView.builder(
      physics: _physics,
      controller: widget.scrollController,
      padding: const EdgeInsets.only(top: 4, bottom: 96),
      itemCount: groups.length,
      itemBuilder: (context, i) {
        final group = groups[i];
        return BirdCageGroup(
          cage: group.cage,
          cageName: group.name,
          birds: group.birds,
          onTapBird: onTapBird,
        );
      },
    );
  }

  /// Flat view: all birds in a single full-width list, no cage grouping.
  Widget _buildFlatList(List<Bird> birds) {
    if (birds.isEmpty) return _emptyList();

    final cs = Theme.of(context).colorScheme;

    return ListView.builder(
      physics: _physics,
      controller: widget.scrollController,
      padding: const EdgeInsets.only(top: 4, bottom: 96),
      itemCount: birds.length,
      itemBuilder: (context, i) {
        return ColoredBox(
          color: cs.surface,
          child: BirdRow(
            bird: birds[i],
            isLast: i == birds.length - 1,
            showCage: true,
            onTap: () => onTapBird(birds[i]),
          ),
        );
      },
    );
  }
}
