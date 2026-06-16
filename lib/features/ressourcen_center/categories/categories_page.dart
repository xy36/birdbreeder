import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/ressourcen_center/categories/categories_details_sheet.dart';
import 'package:birdbreeder/features/ressourcen_center/categories/cubit/categories_filter_cubit.dart';
import 'package:birdbreeder/features/ressourcen_center/categories/cubit/categories_filter_state.dart';
import 'package:birdbreeder/features/ressourcen_center/categories/widgets/finance_category_row.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_overview_ui.dart';
import 'package:birdbreeder/models/finance/finance_category_kind.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/sort_chip.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';
import 'package:birdbreeder/theme/app_colors.dart';

@RoutePage(name: 'CategoriesTabRoute')
class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoriesFilterCubit(),
      child: const _CategoriesTabView(),
    );
  }
}

class _CategoriesTabView extends StatelessWidget {
  const _CategoriesTabView();

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final res = context.watch<BirdBreederCubit>().state.birdBreederResources;
    final filterCubit = context.watch<CategoriesFilterCubit>();
    final filterState = filterCubit.state;
    final cats = res.financesCategories;
    final usage = <String, int>{
      for (final c in cats)
        c.id: res.finances.where((f) => f.categoryId == c.id).length,
    };
    final totalBookings = usage.values.fold<int>(0, (a, b) => a + b);
    final income =
        cats.where((c) => c.kind == FinanceCategoryKind.income).toList();
    final expense =
        cats.where((c) => c.kind == FinanceCategoryKind.expense).toList();

    final filtered = filterCubit.filterCategories(cats);
    final filteredIncome =
        filtered.where((c) => c.kind == FinanceCategoryKind.income).toList();
    final filteredExpense =
        filtered.where((c) => c.kind == FinanceCategoryKind.expense).toList();

    final catsTr = context.tr.finances.categories;
    final chips = <OverviewChipData>[
      OverviewChipData(
        label: catsTr.filters.all,
        count: cats.length,
        active: filterState.typeFilter == FinCategoryFilter.all,
        onTap: () => filterCubit.setTypeFilter(FinCategoryFilter.all),
      ),
      OverviewChipData(
        label: catsTr.filters.income,
        icon: AppIcons.trendingUp,
        count: income.length,
        active: filterState.typeFilter == FinCategoryFilter.income,
        onTap: () => filterCubit.setTypeFilter(FinCategoryFilter.income),
      ),
      OverviewChipData(
        label: catsTr.filters.expense,
        icon: AppIcons.trendingDown,
        count: expense.length,
        active: filterState.typeFilter == FinCategoryFilter.expense,
        onTap: () => filterCubit.setTypeFilter(FinCategoryFilter.expense),
      ),
    ];

    final incRatio = cats.isEmpty ? 0.5 : income.length / cats.length;
    final expRatio = cats.isEmpty ? 0.5 : expense.length / cats.length;

    return Scaffold(
      appBar: SharedAppBarWithDrawer(title: catsTr.title),
      body: OverviewScaffoldBody(
        summary: OverviewSummary(
          total: cats.length,
          label: catsTr.list_title,
          meta: '$totalBookings ${catsTr.bookings}',
          bottom: Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 14, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: SizedBox(
                    height: 8,
                    child: Row(
                      children: [
                        Expanded(
                          flex: (incRatio * 1000).round(),
                          child: Container(color: context.appColors.income),
                        ),
                        Expanded(
                          flex: (expRatio * 1000).round(),
                          child: Container(color: context.appColors.expense),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    _LegendDot(color: context.appColors.income),
                    const SizedBox(width: 4),
                    Text(
                      '${income.length} ${catsTr.groups.income}',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: context.appColors.income,
                        letterSpacing: 0.3,
                      ),
                    ),
                    const Spacer(),
                    _LegendDot(color: context.appColors.expense),
                    const SizedBox(width: 4),
                    Text(
                      '${expense.length} ${catsTr.groups.expense}',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: context.appColors.expense,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          chips: chips,
          trailing: SortChip<CategorySortField>(
            current: filterState.sortField,
            ascending: filterState.sortAsc,
            options: CategorySortField.values,
            labelFor: (ctx, f) => switch (f) {
              CategorySortField.name => ctx.tr.resources.sort.by.name,
              CategorySortField.created => ctx.tr.resources.sort.by.created,
              CategorySortField.kind => ctx.tr.resources.sort.by.kind,
            },
            onChanged: filterCubit.setSort,
          ),
        ),
        bodyChildren: [
          if (filteredIncome.isNotEmpty) ...[
            GroupLabel(
              icon: AppIcons.trendingUp,
              label: catsTr.groups.income,
              count: filteredIncome.length,
              iconColor: context.appColors.income,
            ),
            GroupedList(
              children: [
                for (var i = 0; i < filteredIncome.length; i++)
                  FinanceCategoryRow(
                    category: filteredIncome[i],
                    usage: usage[filteredIncome[i].id] ?? 0,
                    last: i == filteredIncome.length - 1,
                    onTap: () => context.router.push(
                      CategoryDetailRoute(
                        category: filteredIncome[i],
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 4),
          ],
          if (filteredExpense.isNotEmpty) ...[
            GroupLabel(
              icon: AppIcons.trendingDown,
              label: catsTr.groups.expense,
              count: filteredExpense.length,
              iconColor: context.appColors.expense,
            ),
            GroupedList(
              children: [
                for (var i = 0; i < filteredExpense.length; i++)
                  FinanceCategoryRow(
                    category: filteredExpense[i],
                    usage: usage[filteredExpense[i].id] ?? 0,
                    last: i == filteredExpense.length - 1,
                    onTap: () => context.router.push(
                      CategoryDetailRoute(
                        category: filteredExpense[i],
                      ),
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
                catsTr.empty,
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
          onAdd: () => openSheet<void>(context, const CategoriesDetailsSheet()),
        ),
      ),
    );
  }
}

class _LegendDot extends StatelessWidget {
  const _LegendDot({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
