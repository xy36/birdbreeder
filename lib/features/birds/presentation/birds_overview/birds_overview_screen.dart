import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/widget_extensions.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/cubit/birds_filter_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/cubit/birds_search_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/bird_card.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/bird_filter_sheet/bird_filter_sheet.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/birds_overview_header.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/random_bird_fab.dart';
import 'package:birdbreeder/models/bird/bird_filter.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/base_search.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/buttons/button_bird_add.dart';

enum BirdOverviewMode {
  picker,
  viewer,
}

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
  void openBird(Bird bird) {
    context.router.push(BirdRoute(bird: bird));
  }

  void pickBird(Bird bird) {
    context.router.maybePop(bird);
  }

  void duplicate(Bird bird) {
    context.read<BirdBreederCubit>().duplicateBird(bird);
  }

  void delete(Bird bird) {
    context.read<BirdBreederCubit>().deleteBird(bird);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBarWithDrawer(
        title: context.tr.birds.title,
        hideMenuButton: widget.mode == BirdOverviewMode.picker,
        actions: [
          BlocBuilder<BirdSearchCubit, BaseSearch>(
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  context.read<BirdSearchCubit>().toggleActive();
                },
                icon: AnimatedCrossFade(
                  firstChild: const Icon(AppIcons.search),
                  secondChild: const Icon(AppIcons.searchOff),
                  crossFadeState: state.isActive
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 300),
                ),
              );
            },
          ),
          BlocBuilder<BirdsFilterCubit, BirdFilter>(
            builder: (context, filter) {
              final hasActiveFilter = filter != const BirdFilter();

              return IconButton(
                icon: const Icon(AppIcons.filter),
                onPressed: () async {
                  final applied = await showModalBottomSheet<BirdFilter?>(
                    context: context,
                    constraints:
                        BoxConstraints(maxHeight: context.height * 0.8),
                    useSafeArea: true,
                    isScrollControlled: true,
                    builder: (_) => BirdFilterSheet(
                      initial: filter,
                    ),
                  );
                  if (applied != null && context.mounted) {
                    context.read<BirdsFilterCubit>().applyFilter(applied);
                  }
                },
              ).withNotificationBadge(show: hasActiveFilter);
            },
          ),
        ],
      ),
      body: BlocBuilder<BirdBreederCubit, BirdBreederState>(
        builder: (context, state) => state.map(
          initial: (_) => const SharedLoadingWidget(),
          loading: (_) => const SharedLoadingWidget(),
          loaded: (state) {
            return BlocBuilder<BirdsFilterCubit, BirdFilter>(
              builder: (context, filter) {
                final birds = state.birdBreederResources.birds;

                final list =
                    context.watch<BirdsFilterCubit>().filterBirds(birds);
                context.read<BirdSearchCubit>().setItems(list);

                return Column(
                  children: [
                    BlocBuilder<BirdSearchCubit, BaseSearch>(
                      builder: (context, state) {
                        return AnimatedCrossFade(
                          firstChild: const SizedBox.shrink(),
                          secondChild: GenericSearchBar(
                            initialQuery: state.query,
                            onSearch: (query) {
                              context.read<BirdSearchCubit>().setSearch(query);
                            },
                          ),
                          crossFadeState: state.isActive
                              ? CrossFadeState.showSecond
                              : CrossFadeState.showFirst,
                          duration: const Duration(milliseconds: 300),
                        );
                      },
                    ),
                    Expanded(
                      child: BlocBuilder<BirdSearchCubit, BaseSearch>(
                        builder: (context, state) {
                          final searchedBirds =
                              context.read<BirdSearchCubit>().searchedItems;
                          return ListView.builder(
                            physics: const AlwaysScrollableScrollPhysics(
                              parent: BouncingScrollPhysics(),
                            ),
                            controller: widget.scrollController,
                            itemCount: searchedBirds.length,
                            itemBuilder: (context, i) => BirdCard(
                              bird: searchedBirds[i],
                              onTap: () =>
                                  widget.mode == BirdOverviewMode.picker
                                      ? pickBird(searchedBirds[i])
                                      : openBird(searchedBirds[i]),
                              onDuplicate: () => duplicate(searchedBirds[i]),
                              onDelete: () => delete(searchedBirds[i]),
                              onEdit: () => openBird(searchedBirds[i]),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          RandomBirdFab(),
          ButtonBirdAdd.floating(),
        ],
      ),
    );
  }
}
