import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/finances_extension.dart';
import 'package:birdbreeder/features/finances/cubit/finances_filter_cubit.dart';
import 'package:birdbreeder/features/finances/widgets/add_finances_sheet.dart';
import 'package:birdbreeder/features/finances/widgets/category_filter_sheet.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/finance/finance_category_kind.dart';
import 'package:birdbreeder/models/finance/finance_filter.dart';
import 'package:birdbreeder/models/finance/finances_actions.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/generic_search_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/bird_breeder_wrapper.dart';
import 'package:birdbreeder/shared/widgets/bottom_search_bar.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';
import 'package:birdbreeder/theme/app_colors.dart';

class FinancesScreen extends StatefulWidget {
  const FinancesScreen({super.key});

  @override
  State<FinancesScreen> createState() => _FinancesScreenState();
}

class _FinancesScreenState extends State<FinancesScreen> {
  late DateTime _month;
  _KindFilter _kindFilter = _KindFilter.all;
  _ScopeMode _scope = _ScopeMode.month;
  DateTime? _customFrom;
  DateTime? _customTo;
  final Set<String> _selectedCategories = {};

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    _month = DateTime(now.year, now.month);
  }

  ({DateTime from, DateTime to})? _scopeRange() {
    switch (_scope) {
      case _ScopeMode.month:
        return (
          from: DateTime(_month.year, _month.month),
          to: DateTime(_month.year, _month.month + 1, 0, 23, 59, 59),
        );
      case _ScopeMode.year:
        return (
          from: DateTime(_month.year),
          to: DateTime(_month.year, 12, 31, 23, 59, 59),
        );
      case _ScopeMode.all:
        return null;
      case _ScopeMode.custom:
        if (_customFrom == null || _customTo == null) return null;
        return (
          from: _customFrom!,
          to: DateTime(
            _customTo!.year,
            _customTo!.month,
            _customTo!.day,
            23,
            59,
            59,
          ),
        );
    }
  }

  Future<void> _pickFrom() async {
    final d = await showDatePicker(
      context: context,
      initialDate: _customFrom ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (d != null) setState(() => _customFrom = d);
  }

  Future<void> _pickTo() async {
    final d = await showDatePicker(
      context: context,
      initialDate: _customTo ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (d != null) setState(() => _customTo = d);
  }

  bool get _isCurrentMonth {
    final now = DateTime.now();
    return _month.year == now.year && _month.month == now.month;
  }

  bool get _isCurrentYear => _month.year == DateTime.now().year;

  void _changeNav(int delta) {
    setState(() {
      switch (_scope) {
        case _ScopeMode.month:
          _month = DateTime(_month.year, _month.month + delta);
        case _ScopeMode.year:
          _month = DateTime(_month.year + delta);
        case _ScopeMode.all:
        case _ScopeMode.custom:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      drawer: sharedMenuDrawer(context),
      appBar: SharedAppBarWithDrawer(
        title: context.tr.finances.title,
      ),
      body: BirdBreederWrapper(
        child: BlocBuilder<BirdBreederCubit, BirdBreederState>(
          builder: (context, state) {
            final res = state.birdBreederResources;
            final allFinances = res.finances;
            final categories = res.financesCategories;
            return BlocBuilder<FinancesFilterCubit, FinanceFilter>(
              builder: (context, filter) {
                final globallyFiltered =
                    context.read<FinancesFilterCubit>().filterFinances(
                          allFinances,
                        );
                final range = _scopeRange();
                final inMonth = range == null
                    ? globallyFiltered
                    : globallyFiltered.where((f) {
                        final d = f.date ?? f.created;
                        if (d == null) return false;
                        return !d.isBefore(range.from) && !d.isAfter(range.to);
                      }).toList();
                final kindFiltered = switch (_kindFilter) {
                  _KindFilter.all => inMonth,
                  _KindFilter.income => inMonth
                      .where((f) =>
                          f.categoryResolved?.kind ==
                          FinanceCategoryKind.income)
                      .toList(),
                  _KindFilter.expense => inMonth
                      .where((f) =>
                          f.categoryResolved?.kind ==
                          FinanceCategoryKind.expense)
                      .toList(),
                };
                final visible = _selectedCategories.isEmpty
                    ? kindFiltered
                    : kindFiltered
                        .where((f) =>
                            _selectedCategories.contains(f.categoryId))
                        .toList();

                context.read<FinanceSearchCubit>().setItems(visible);
                return BlocBuilder<FinanceSearchCubit, Query>(
                  builder: (context, _) {
                    final searched =
                        context.read<FinanceSearchCubit>().searchedItems;
                    final income = searched
                        .where((f) =>
                            f.categoryResolved?.kind ==
                            FinanceCategoryKind.income)
                        .fold<double>(0, (a, b) => a + b.amount);
                    final expense = searched
                        .where((f) =>
                            f.categoryResolved?.kind ==
                            FinanceCategoryKind.expense)
                        .fold<double>(0, (a, b) => a + b.amount);
                    final net = income - expense;
                    final grouped = _buildGroups(searched);
                    return Column(
                      children: [
                        Expanded(
                          child: CustomScrollView(
                            physics: const AlwaysScrollableScrollPhysics(
                              parent: BouncingScrollPhysics(),
                            ),
                            slivers: [
                              PinnedHeaderSliver(
                                child: Material(
                                  color: cs.surface,
                                  child: _MonthHeader(
                                    month: _month,
                                    scope: _scope,
                                    isCurrentMonth: _isCurrentMonth,
                                    isCurrentYear: _isCurrentYear,
                                    onScopeChange: (s) =>
                                        setState(() => _scope = s),
                                    onPrev: () => _changeNav(-1),
                                    onNext: () => _changeNav(1),
                                    income: income,
                                    expense: expense,
                                    net: net,
                                    inMonth: inMonth,
                                    categories: categories,
                                    kindFilter: _kindFilter,
                                    onKindFilter: (k) =>
                                        setState(() => _kindFilter = k),
                                    selectedCategories: _selectedCategories,
                                    onRemoveCategory: (id) => setState(
                                      () => _selectedCategories.remove(id),
                                    ),
                                    onOpenCategoryFilter: () async {
                                      final result =
                                          await openSheet<Set<String>>(
                                        context,
                                        CategoryFilterSheet(
                                          initial: _selectedCategories,
                                          categories: categories,
                                        ),
                                      );
                                      if (result != null) {
                                        setState(() {
                                          _selectedCategories
                                            ..clear()
                                            ..addAll(result);
                                        });
                                      }
                                    },
                                    customFrom: _customFrom,
                                    customTo: _customTo,
                                    onPickFrom: _pickFrom,
                                    onPickTo: _pickTo,
                                  ),
                                ),
                              ),
                              if (grouped.isEmpty)
                                SliverFillRemaining(
                                  hasScrollBody: false,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(40),
                                      child: Text(
                                        context.tr.finances.view.empty,
                                        style: TextStyle(
                                          color: cs.onSurfaceVariant,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              else
                                SliverPadding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 6, 10, 90),
                                  sliver: SliverList(
                                    delegate: SliverChildBuilderDelegate(
                                      (_, i) => _DayGroup(group: grouped[i]),
                                      childCount: grouped.length,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        BottomSearchBar(
                          onSearch: (q) => context
                              .read<FinanceSearchCubit>()
                              .setSearch(q),
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
            );
          },
        ),
      ),
    );
  }

  List<_DayGroupData> _buildGroups(List<Finance> finances) {
    switch (_scope) {
      case _ScopeMode.month:
        return _groupBy(finances, _GroupKind.day);
      case _ScopeMode.year:
        return _groupBy(finances, _GroupKind.month);
      case _ScopeMode.all:
      case _ScopeMode.custom:
        return _groupBy(finances, _GroupKind.monthWithYear);
    }
  }

  List<_DayGroupData> _groupBy(List<Finance> finances, _GroupKind kind) {
    final map = <DateTime, List<Finance>>{};
    for (final f in finances) {
      final d = f.date ?? f.created;
      if (d == null) continue;
      final key = switch (kind) {
        _GroupKind.day => DateTime(d.year, d.month, d.day),
        _GroupKind.month => DateTime(d.year, d.month),
        _GroupKind.monthWithYear => DateTime(d.year, d.month),
      };
      (map[key] ??= []).add(f);
    }
    final keys = map.keys.toList()..sort((a, b) => b.compareTo(a));
    return keys.map((k) {
      final items = map[k]!
        ..sort((a, b) {
          final ad = a.date ?? a.created ?? DateTime(1970);
          final bd = b.date ?? b.created ?? DateTime(1970);
          return bd.compareTo(ad);
        });
      final total = items.fold<double>(
        0,
        (a, b) {
          final ck = b.categoryResolved?.kind;
          return a +
              (ck == FinanceCategoryKind.income ? b.amount : -b.amount);
        },
      );
      return _DayGroupData(date: k, items: items, total: total, kind: kind);
    }).toList();
  }
}

enum _GroupKind { day, month, monthWithYear }

enum _KindFilter { all, income, expense }

enum _ScopeMode { month, year, all, custom }

class _DayGroupData {
  _DayGroupData({
    required this.date,
    required this.items,
    required this.total,
    required this.kind,
  });
  final DateTime date;
  final List<Finance> items;
  final double total;
  final _GroupKind kind;
}

class _MonthHeader extends StatelessWidget {
  const _MonthHeader({
    required this.month,
    required this.scope,
    required this.isCurrentMonth,
    required this.isCurrentYear,
    required this.onScopeChange,
    required this.onPrev,
    required this.onNext,
    required this.income,
    required this.expense,
    required this.net,
    required this.inMonth,
    required this.categories,
    required this.kindFilter,
    required this.onKindFilter,
    required this.selectedCategories,
    required this.onRemoveCategory,
    required this.onOpenCategoryFilter,
    required this.customFrom,
    required this.customTo,
    required this.onPickFrom,
    required this.onPickTo,
  });

  final DateTime month;
  final _ScopeMode scope;
  final bool isCurrentMonth;
  final bool isCurrentYear;
  final ValueChanged<_ScopeMode> onScopeChange;
  final VoidCallback onPrev;
  final VoidCallback onNext;
  final double income;
  final double expense;
  final double net;
  final List<Finance> inMonth;
  final List<FinanceCategory> categories;
  final _KindFilter kindFilter;
  final ValueChanged<_KindFilter> onKindFilter;
  final Set<String> selectedCategories;
  final ValueChanged<String> onRemoveCategory;
  final VoidCallback onOpenCategoryFilter;
  final DateTime? customFrom;
  final DateTime? customTo;
  final VoidCallback onPickFrom;
  final VoidCallback onPickTo;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tr = context.tr;
    final navLabel = switch (scope) {
      _ScopeMode.month => _monthLabel(context, month),
      _ScopeMode.year => '${month.year}',
      _ScopeMode.all => '',
      _ScopeMode.custom => '',
    };
    final showCurrentPill = switch (scope) {
      _ScopeMode.month => isCurrentMonth,
      _ScopeMode.year => isCurrentYear,
      _ScopeMode.all => false,
      _ScopeMode.custom => false,
    };
    final currentLabel = scope == _ScopeMode.year
        ? tr.finances.scope.current_year
        : tr.finances.summary.today;
    return Container(
      decoration: BoxDecoration(
        color: cs.surface,
        border: Border(bottom: BorderSide(color: cs.outlineVariant)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 8, 14, 4),
            child: SegmentedButton<_ScopeMode>(
              segments: [
                ButtonSegment(
                  value: _ScopeMode.month,
                  label: Text(tr.finances.scope.month),
                ),
                ButtonSegment(
                  value: _ScopeMode.year,
                  label: Text(tr.finances.scope.year),
                ),
                ButtonSegment(
                  value: _ScopeMode.all,
                  label: Text(tr.finances.scope.all),
                ),
                ButtonSegment(
                  value: _ScopeMode.custom,
                  label: Text(tr.finances.scope.custom),
                ),
              ],
              selected: {scope},
              onSelectionChanged: (s) => onScopeChange(s.first),
              showSelectedIcon: false,
              style: ButtonStyle(
                visualDensity: VisualDensity.compact,
                textStyle: WidgetStatePropertyAll(
                  TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
            ),
          ),
          if (scope == _ScopeMode.custom)
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 4, 14, 8),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: onPickFrom,
                      icon: const Icon(AppIcons.date, size: 14),
                      label: Text(
                        customFrom != null
                            ? '${tr.finances.scope.from_short} ${MaterialLocalizations.of(context).formatShortDate(customFrom!)}'
                            : '${tr.finances.scope.from_short} …',
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: onPickTo,
                      icon: const Icon(AppIcons.date, size: 14),
                      label: Text(
                        customTo != null
                            ? '${tr.finances.scope.to_short} ${MaterialLocalizations.of(context).formatShortDate(customTo!)}'
                            : '${tr.finances.scope.to_short} …',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (scope != _ScopeMode.all && scope != _ScopeMode.custom)
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 4, 8),
            child: Row(
              children: [
                IconButton(
                  onPressed: onPrev,
                  icon: const Icon(AppIcons.chevronLeft),
                ),
                Expanded(
                  child: Text(
                    navLabel,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.2,
                      color: cs.onSurface,
                    ),
                  ),
                ),
                if (showCurrentPill)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 9,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: cs.tertiaryContainer,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      currentLabel,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                        color: cs.onTertiaryContainer,
                      ),
                    ),
                  ),
                IconButton(
                  onPressed: onNext,
                  icon: const Icon(AppIcons.chevronRight),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 14, 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  tr.finances.summary.net_label,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                    color: cs.onSurfaceVariant,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  '${net >= 0 ? '+' : '−'}${net.abs().toStringAsFixed(2)}',
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                    height: 1,
                    color: net >= 0
                        ? context.appColors.income
                        : context.appColors.expense,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  '€',
                  style: TextStyle(
                    fontSize: 18,
                    color: cs.onSurfaceVariant,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 6, 14, 10),
            child: Row(
              children: [
                Expanded(
                  child: _SplitCard(
                    label: tr.finances.summary.income_label,
                    amount: income,
                    color: context.appColors.income,
                    sign: '+',
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _SplitCard(
                    label: tr.finances.summary.expense_label,
                    amount: expense,
                    color: context.appColors.expense,
                    sign: '−',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 36,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 14),
              children: [
                _KindChip(
                  label: tr.finances.view.all,
                  active: kindFilter == _KindFilter.all,
                  count: inMonth.length,
                  onTap: () => onKindFilter(_KindFilter.all),
                ),
                const SizedBox(width: 6),
                _KindChip(
                  label: tr.finances.kind.income,
                  active: kindFilter == _KindFilter.income,
                  color: context.appColors.income,
                  count: inMonth
                      .where((f) =>
                          f.categoryResolved?.kind ==
                          FinanceCategoryKind.income)
                      .length,
                  onTap: () => onKindFilter(_KindFilter.income),
                ),
                const SizedBox(width: 6),
                _KindChip(
                  label: tr.finances.kind.expense,
                  active: kindFilter == _KindFilter.expense,
                  color: context.appColors.expense,
                  count: inMonth
                      .where((f) =>
                          f.categoryResolved?.kind ==
                          FinanceCategoryKind.expense)
                      .length,
                  onTap: () => onKindFilter(_KindFilter.expense),
                ),
                Container(
                  width: 1,
                  height: 16,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  color: cs.outlineVariant,
                ),
                for (final id in selectedCategories)
                  for (final cat in categories.where((c) => c.id == id))
                    Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: _ActiveCategoryChip(
                        category: cat,
                        onRemove: () => onRemoveCategory(id),
                      ),
                    ),
                _AddFilterChip(onTap: onOpenCategoryFilter),
              ],
            ),
          ),
          const SizedBox(height: 6),
        ],
      ),
    );
  }

  String _monthLabel(BuildContext context, DateTime d) {
    return MaterialLocalizations.of(context).formatMonthYear(d);
  }
}

class _SplitCard extends StatelessWidget {
  const _SplitCard({
    required this.label,
    required this.amount,
    required this.color,
    required this.sign,
  });
  final String label;
  final double amount;
  final Color color;
  final String sign;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      decoration: BoxDecoration(
        color: cs.surfaceContainer,
        borderRadius: BorderRadius.circular(10),
        border: Border(left: BorderSide(color: color, width: 3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.8,
              color: color,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '$sign${amount.toStringAsFixed(2)}€',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: color,
              letterSpacing: 0.3,
              height: 1.1,
            ),
          ),
        ],
      ),
    );
  }
}

class _KindChip extends StatelessWidget {
  const _KindChip({
    required this.label,
    required this.active,
    required this.count,
    required this.onTap,
    this.color,
  });
  final String label;
  final bool active;
  final int count;
  final VoidCallback onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final fg = active ? cs.onPrimary : (color ?? cs.onSurfaceVariant);
    final bg = active ? (color ?? cs.primary) : cs.surfaceContainer;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(100),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(100),
          border: active ? null : Border.all(color: cs.outlineVariant),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.3,
                color: fg,
              ),
            ),
            const SizedBox(width: 5),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: active
                    ? Colors.white.withValues(alpha: 0.18)
                    : cs.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                '$count',
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontWeight: FontWeight.w700,
                  fontSize: 11,
                  color: fg,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActiveCategoryChip extends StatelessWidget {
  const _ActiveCategoryChip({
    required this.category,
    required this.onRemove,
  });
  final FinanceCategory category;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isIncome = category.kind == FinanceCategoryKind.income;
    final accent =
        isIncome ? context.appColors.income : context.appColors.expense;
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 4, 4, 4),
      decoration: BoxDecoration(
        color: accent.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: accent.withValues(alpha: 0.5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: accent,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 5),
          Text(
            category.name,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.3,
              color: cs.onSurface,
            ),
          ),
          const SizedBox(width: 2),
          InkWell(
            onTap: onRemove,
            borderRadius: BorderRadius.circular(100),
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Icon(
                AppIcons.close,
                size: 13,
                color: cs.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AddFilterChip extends StatelessWidget {
  const _AddFilterChip({required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(100),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: cs.surfaceContainer,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: cs.outlineVariant),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(AppIcons.add, size: 14, color: cs.onSurfaceVariant),
            const SizedBox(width: 3),
            Text(
              context.tr.finances.view.filter_button,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: cs.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DayGroup extends StatelessWidget {
  const _DayGroup({required this.group});
  final _DayGroupData group;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 10, 8, 6),
            child: Row(
              children: [
                Text(
                  _headerLabel(context, group),
                  style: TextStyle(
                    fontFamily: group.kind == _GroupKind.day
                        ? 'monospace'
                        : null,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: cs.onSurface,
                    letterSpacing: 0.3,
                  ),
                ),
                if (group.kind == _GroupKind.day) ...[
                  const SizedBox(width: 8),
                  Text(
                    _weekday(context, group.date),
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: cs.onSurfaceVariant,
                      letterSpacing: 0.3,
                    ),
                  ),
                  if (_relative(context, group.date) case final rel?) ...[
                    const SizedBox(width: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 7,
                        vertical: 1,
                      ),
                      decoration: BoxDecoration(
                        color: cs.tertiaryContainer,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        rel,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.3,
                          color: cs.onTertiaryContainer,
                        ),
                      ),
                    ),
                  ],
                ],
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: cs.surfaceContainer,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    '${group.total >= 0 ? '+' : '−'}${group.total.abs().toStringAsFixed(2)}€',
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.3,
                      color: group.total >= 0
                          ? context.appColors.income
                          : context.appColors.expense,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: cs.surface,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: cs.outlineVariant),
            ),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                for (var i = 0; i < group.items.length; i++)
                  _TxRow(
                    finance: group.items[i],
                    last: i == group.items.length - 1,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _headerLabel(BuildContext context, _DayGroupData g) {
    final d = g.date;
    switch (g.kind) {
      case _GroupKind.day:
        return '${d.day.toString().padLeft(2, '0')}.${d.month.toString().padLeft(2, '0')}.';
      case _GroupKind.month:
        final months = MaterialLocalizations.of(context);
        return months.formatMonthYear(d).split(' ').first;
      case _GroupKind.monthWithYear:
        return MaterialLocalizations.of(context).formatMonthYear(d);
    }
  }

  String _weekday(BuildContext context, DateTime d) {
    final names = MaterialLocalizations.of(context).narrowWeekdays;
    final wd = d.weekday % 7;
    return names[wd];
  }

  String? _relative(BuildContext context, DateTime d) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final diff = today.difference(d).inDays;
    final tr = context.tr;
    if (diff == 0) return tr.finances.view.today.toUpperCase();
    if (diff == 1) return tr.finances.view.yesterday.toUpperCase();
    return null;
  }
}

class _TxRow extends StatelessWidget {
  const _TxRow({required this.finance, required this.last});
  final Finance finance;
  final bool last;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final cat = finance.categoryResolved;
    final isIncome = cat?.kind == FinanceCategoryKind.income;
    final accent = isIncome
        ? context.appColors.income
        : context.appColors.expense;
    final amountText =
        '${isIncome ? '+' : '−'}${finance.amount.abs().toStringAsFixed(2)}€';
    final label = (finance.title?.isNotEmpty ?? false)
        ? finance.title!
        : (cat?.name ?? '—');
    return InkWell(
      onTap: () => FinancesActions.edit.execute(context, finance),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          border: last
              ? null
              : Border(bottom: BorderSide(color: cs.outlineVariant)),
        ),
        child: Row(
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: accent.withValues(alpha: 0.18),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Icon(
                isIncome ? AppIcons.trendingUp : AppIcons.trendingDown,
                size: 18,
                color: accent,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: cs.onSurface,
                      letterSpacing: 0.1,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (cat != null) ...[
                    const SizedBox(height: 2),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 1,
                      ),
                      decoration: BoxDecoration(
                        color: accent.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        cat.name.toUpperCase(),
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.4,
                          color: accent,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(width: 8),
            Text(
              amountText,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: accent,
                letterSpacing: 0.3,
              ),
            ),
            const SizedBox(width: 4),
            FinancesActions.buildMenu(context, finance),
          ],
        ),
      ),
    );
  }
}
