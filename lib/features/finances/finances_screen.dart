import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/finances_extension.dart';
import 'package:birdbreeder/core/extensions/widget_extensions.dart';
import 'package:birdbreeder/features/finances/widgets/add_finances_sheet.dart';
import 'package:birdbreeder/features/finances/widgets/finance_entry_card.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/generic_search_cubit.dart';
import 'package:birdbreeder/shared/widgets/bird_breeder_wrapper.dart';
import 'package:birdbreeder/shared/widgets/bottom_search_bar.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class FinancesScreen extends StatefulWidget {
  const FinancesScreen({super.key});

  @override
  State<FinancesScreen> createState() => _FinancesScreenState();
}

class _FinancesScreenState extends State<FinancesScreen>
    with TickerProviderStateMixin {
  late final TabController controller;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBarWithDrawer(title: context.tr.finances.title),
      body: BirdBreederWrapper(
        child: BlocBuilder<BirdBreederCubit, BirdBreederState>(
          builder: (context, state) {
            context
                .read<FinanceSearchCubit>()
                .setItems(state.birdBreederResources.finances);

            return BlocBuilder<FinanceSearchCubit, Query>(
              builder: (context, state) {
                final searchedFinances =
                    context.read<FinanceSearchCubit>().searchedItems;
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(
                          parent: BouncingScrollPhysics(),
                        ),
                        itemCount: searchedFinances.length,
                        itemBuilder: (context, i) {
                          final entry = searchedFinances[i];
                          if (entry.categoryResolved == null) {
                            return const SizedBox.shrink();
                          }
                          return FinanceEntryCard(
                            finance: entry,
                            category: entry.categoryResolved!,
                          );
                        },
                      ).withRefresher(
                        onRefresh: () async {
                          await context
                              .read<BirdBreederCubit>()
                              .fetchFinances();
                        },
                      ),
                    ),
                    BottomSearchBar(
                      onSearch: (query) {
                        context.read<FinanceSearchCubit>().setSearch(query);
                      },
                      onAdd: () async {
                        await openSheet<void>(
                          context,
                          const AddFinancesSheet(finances: null),
                        );
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
