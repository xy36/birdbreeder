import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/widget_extensions.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/breedings/breeding_pairs/widgets/add_breeding_pair_sheet.dart';
import 'package:birdbreeder/features/breedings/breeding_pairs/widgets/breeding_pair_card.dart';
import 'package:birdbreeder/features/breedings/cubit/breeding_pair_search_cubit.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/base_search.dart';
import 'package:birdbreeder/shared/widgets/bird_breeder_wrapper.dart';
import 'package:birdbreeder/shared/widgets/bottom_search_bar.dart';
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
    return Scaffold(
      appBar: SharedAppBarWithDrawer(
        title: context.tr.breeding_pairs.title,
      ),
      body: BirdBreederWrapper(
        child: BlocBuilder<BirdBreederCubit, BirdBreederState>(
          builder: (context, state) {
            context
                .read<BreedingPairSearchCubit>()
                .setItems(state.birdBreederResources.breedingPairs);
            return BlocBuilder<BreedingPairSearchCubit, BaseSearch>(
              builder: (context, state) {
                final searchedBreedingPairs =
                    context.read<BreedingPairSearchCubit>().searchedItems;

                return ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics(),
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 16,
                  ),
                  itemCount: searchedBreedingPairs.length,
                  itemBuilder: (context, i) {
                    final breedingPair = searchedBreedingPairs[i];

                    return BreedingPairCard(
                      breedingPair: breedingPair,
                      onTap: () async {
                        await context.router.push(
                          BreedingPairDetailsRoute(
                            breedingPairId: breedingPair.id,
                          ),
                        );
                      },
                    );
                  },
                ).withRefresher(
                  onRefresh: () async {
                    await context.read<BirdBreederCubit>().fetchBreedingPairs();
                  },
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: BottomSearchBar(
        onSearch: (query) {
          context.read<BreedingPairSearchCubit>().setSearch(query);
        },
        onAdd: () async {
          await openSheet<void>(
            context,
            const AddBreedingPairSheet(breedingPair: null),
          );
        },
      ),
    );
  }
}
