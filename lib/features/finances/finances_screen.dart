import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/finances_extension.dart';
import 'package:birdbreeder/core/extensions/widget_extensions.dart';
import 'package:birdbreeder/features/finances/cubit/finances_filter_cubit.dart';
import 'package:birdbreeder/features/finances/widgets/add_finances_sheet.dart';
import 'package:birdbreeder/features/finances/widgets/finance_entry_card.dart';
import 'package:birdbreeder/features/finances/widgets/finance_filter_sheet.dart';
import 'package:birdbreeder/features/finances/widgets/finance_summary_bar.dart';
import 'package:birdbreeder/features/finances/widgets/year_chips.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/finance_filter.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/generic_search_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/bird_breeder_wrapper.dart';
import 'package:birdbreeder/shared/widgets/bottom_search_bar.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class FinancesScreen extends StatelessWidget {
  const FinancesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBarWithDrawer(
        title: context.tr.finances.title,
        actions: [
          BlocBuilder<FinancesFilterCubit, FinanceFilter>(
            builder: (context, filter) {
              final hasActiveFilter = filter != const FinanceFilter();

              return IconButton(
                icon: const Icon(AppIcons.filter),
                onPressed: () async {
                  final applied = await openSheet<FinanceFilter?>(
                    context,
                    FinanceFilterSheet(initial: filter),
                  );
                  if (applied != null && context.mounted) {
                    context.read<FinancesFilterCubit>().applyFilter(applied);
                  }
                },
              ).withNotificationBadge(show: hasActiveFilter);
            },
          ),
        ],
      ),
      body: BirdBreederWrapper(
        child: BlocBuilder<BirdBreederCubit, BirdBreederState>(
          builder: (context, state) {
            final allFinances = state.birdBreederResources.finances;
            return BlocBuilder<FinancesFilterCubit, FinanceFilter>(
              builder: (context, _) {
                final list = context.read<FinancesFilterCubit>().filterFinances(
                      allFinances,
                    );
                context.read<FinanceSearchCubit>().setItems(list);

                return BlocBuilder<FinanceSearchCubit, Query>(
                  builder: (context, _) {
                    final finances =
                        context.read<FinanceSearchCubit>().searchedItems;
                    return Column(
                      children: [
                        YearChips(finances: allFinances),
                        FinanceSummaryBar(finances: finances),
                        Expanded(child: _FinancesList(finances: finances)),
                      ],
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class _FinancesList extends StatelessWidget {
  const _FinancesList({required this.finances});
  final List<Finance> finances;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            itemCount: finances.length,
            itemBuilder: (context, i) {
              final entry = finances[i];
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
              await context.read<BirdBreederCubit>().fetchFinances();
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
  }
}
