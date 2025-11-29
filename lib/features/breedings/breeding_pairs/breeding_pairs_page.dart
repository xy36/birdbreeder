import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/birds_overview_header.dart';
import 'package:birdbreeder/features/breedings/breeding_pairs/widgets/add_breeding_pair_sheet.dart';
import 'package:birdbreeder/features/breedings/breeding_pairs/widgets/breeding_pair_card.dart';
import 'package:birdbreeder/features/breedings/cubit/breeding_pair_search_cubit.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/base_search.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/bird_breeder_wrapper.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

@RoutePage()
class BreedingPairsPage extends StatefulWidget {
  const BreedingPairsPage({
    super.key,
  });

  @override
  State<BreedingPairsPage> createState() => _BreedingPairsPageState();
}

class _BreedingPairsPageState extends State<BreedingPairsPage> {
  @override
  Widget build(BuildContext context) {
    final breedingPairs = context
        .watch<BirdBreederCubit>()
        .state
        .birdBreederResources
        .breedingPairs;

    context.read<BreedingPairSearchCubit>().setItems(breedingPairs);

    return Scaffold(
      appBar: SharedAppBarWithDrawer(
        title: context.tr.breeding_pairs.title,
        actions: [
          BlocBuilder<BreedingPairSearchCubit, BaseSearch>(
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  context.read<BreedingPairSearchCubit>().toggleActive();
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
        ],
      ),
      body: BirdBreederWrapper(
        child: Column(
          children: [
            BlocBuilder<BreedingPairSearchCubit, BaseSearch>(
              builder: (context, state) {
                return AnimatedCrossFade(
                  firstChild: const SizedBox.shrink(),
                  secondChild: GenericSearchBar(
                    initialQuery: state.query,
                    onSearch: (query) {
                      context.read<BreedingPairSearchCubit>().setSearch(query);
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
              child: BlocBuilder<BreedingPairSearchCubit, BaseSearch>(
                builder: (context, state) {
                  final searchedBreedingPairs =
                      context.read<BreedingPairSearchCubit>().searchedItems;
                  return ListView.separated(
                    physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 12),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    itemCount: searchedBreedingPairs.length,
                    itemBuilder: (context, i) {
                      final breedingPair = searchedBreedingPairs[i];

                      return BreedingPairCard(
                        breedingPair: breedingPair,
                        onTap: () {
                          context.router.push(
                            BreedingPairDetailsRoute(
                              breedingPairId: breedingPair.id,
                            ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // show bottom modal view
          await openSheet<void>(
            context,
            const AddBreedingPairSheet(breedingPair: null),
          );
        },
        child: const Icon(AppIcons.add),
      ),
    );
  }
}
