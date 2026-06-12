import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/breedings/breeding_pairs/widgets/add_breeding_pair_sheet.dart';
import 'package:birdbreeder/features/breedings/shared/mini_stats.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/sort_chip.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:birdbreeder/models/breeding/brood_status.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair_status.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/generic_search_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/utils.dart';
import 'package:birdbreeder/shared/utils/natural_compare.dart';
import 'package:birdbreeder/shared/widgets/bottom_search_bar.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';
import 'package:birdbreeder/theme/app_colors.dart';

enum BreedingPairSortField { cage, updated, created }

bool _pairHasActiveBrood(BreedingPair p) =>
    p.broodsResolved.any((b) => b.status == BroodStatus.active);

@RoutePage()
class BreedingPairsPage extends StatefulWidget {
  const BreedingPairsPage({super.key});

  @override
  State<BreedingPairsPage> createState() => _BreedingPairsPageState();
}

class _BreedingPairsPageState extends State<BreedingPairsPage> {
  int? _selectedYear = DateTime.now().year;
  BreedingPairSortField _sortField = BreedingPairSortField.cage;
  bool _sortAsc = true;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tr = context.tr;
    return Scaffold(
      drawer: sharedMenuDrawer(context),
      appBar: SharedAppBarWithDrawer(title: tr.breeding_pairs.title),
      body: BlocBuilder<BirdBreederCubit, BirdBreederState>(
        builder: (context, state) {
          final allPairs = state.birdBreederResources.breedingPairs;
          context.read<BreedingPairSearchCubit>().setItems(allPairs);
          return BlocBuilder<BreedingPairSearchCubit, Query>(
            builder: (context, _) {
              final searched =
                  context.read<BreedingPairSearchCubit>().searchedItems;
              final years = _availableYears(allPairs);
              final filtered = _filterByYear(searched, _selectedYear);
              final groups = _groupByCage(
                context,
                filtered,
                _selectedYear,
                _sortField,
                _sortAsc,
              );
              final roster = _roster(filtered, _selectedYear);

              return CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics(),
                ),
                slivers: [
                  PinnedHeaderSliver(
                    child: Material(
                      color: cs.surface,
                      child: _SummaryHeader(
                        years: years,
                        selected: _selectedYear,
                        onYearTap: (y) => setState(() => _selectedYear = y),
                        roster: roster,
                        sortField: _sortField,
                        sortAsc: _sortAsc,
                        onSortChanged: (field, asc) => setState(() {
                          _sortField = field;
                          _sortAsc = asc;
                        }),
                      ),
                    ),
                  ),
                  if (groups.isEmpty)
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Padding(
                        padding: const EdgeInsets.all(40),
                        child: Center(
                          child: Text(
                            _selectedYear == null
                                ? tr.breeding_pairs.empty
                                : tr.breeding_pairs.empty_for_year(
                                    Year: _selectedYear!,
                                  ),
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
                      padding: const EdgeInsets.fromLTRB(10, 8, 10, 110),
                      sliver: SliverList.builder(
                        itemCount: groups.length,
                        itemBuilder: (_, i) => Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: _GroupCard(
                            group: groups[i],
                            selectedYear: _selectedYear,
                            onTapPair: (p) async {
                              await context.router.push(
                                BreedingPairDetailsRoute(
                                  breedingPairId: p.id,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          );
        },
      ),
      floatingActionButton: BottomSearchBar(
        onSearch: (q) => context.read<BreedingPairSearchCubit>().setSearch(q),
        onAdd: () async {
          await openSheet<void>(
            context,
            const AddBreedingPairSheet(breedingPair: null),
          );
        },
      ),
    );
  }

  List<int> _availableYears(List<BreedingPair> pairs) {
    final set = <int>{};
    for (final p in pairs) {
      if (p.start != null) set.add(p.start!.year);
      if (p.end != null) set.add(p.end!.year);
    }
    set.add(DateTime.now().year);
    final list = set.toList()..sort((a, b) => b.compareTo(a));
    return list;
  }

  List<BreedingPair> _filterByYear(List<BreedingPair> pairs, int? year) {
    if (year == null) return pairs;
    return pairs.where((p) {
      final startYear = p.start?.year ?? year;
      final endYear = p.end?.year;
      if (startYear > year) return false;
      if (endYear != null && endYear < year) return false;
      return true;
    }).toList();
  }

  List<_CageGroup> _groupByCage(
    BuildContext context,
    List<BreedingPair> pairs,
    int? year,
    BreedingPairSortField field,
    bool ascending,
  ) {
    final tr = context.tr;
    final map = <String, List<BreedingPair>>{};
    final cageOrder = <String>[];
    for (final p in pairs) {
      final key = p.cageResolved?.name ?? tr.breeding_pairs.no_cage;
      if (!map.containsKey(key)) {
        map[key] = [];
        cageOrder.add(key);
      }
      map[key]!.add(p);
    }
    final dir = ascending ? 1 : -1;
    DateTime dateOf(BreedingPair p) => field == BreedingPairSortField.updated
        ? (p.updated ?? DateTime(1970))
        : (p.created ?? DateTime(1970));
    final groups = cageOrder.map((cage) {
      final list = map[cage]!;
      if (field != BreedingPairSortField.cage) {
        list.sort((a, b) => dir * dateOf(a).compareTo(dateOf(b)));
      }
      var laid = 0;
      var hatched = 0;
      var fledged = 0;
      var fertilized = 0;
      var withBrood = 0;
      for (final p in list) {
        final broods = _broodsInYear(p, year);
        laid += broods.laidCount;
        fertilized += broods.fertilizedCount;
        hatched += broods.hatchedCount;
        fledged += broods.fledgedCount;
        if (_pairHasActiveBrood(p)) withBrood++;
      }
      return _CageGroup(
        cage: cage,
        pairs: list,
        laid: laid,
        fertilized: fertilized,
        hatched: hatched,
        fledged: fledged,
        withBrood: withBrood,
      );
    }).toList();
    if (field == BreedingPairSortField.cage) {
      groups.sort((a, b) => dir * naturalCompare(a.cage, b.cage));
    } else {
      DateTime groupDate(_CageGroup g) => g.pairs.map(dateOf).fold<DateTime>(
            DateTime(1970),
            (acc, d) => d.isAfter(acc) ? d : acc,
          );
      groups.sort((a, b) => dir * groupDate(a).compareTo(groupDate(b)));
    }
    return groups;
  }

  _Roster _roster(List<BreedingPair> pairs, int? year) {
    final cages = <String?>{};
    var laid = 0;
    var fertilized = 0;
    var hatched = 0;
    var fledged = 0;
    var pairsActive = 0;
    var pairsPaused = 0;
    var pairsFinished = 0;
    for (final p in pairs) {
      cages.add(p.cageResolved?.name);
      final eggBroods = _broodsInYear(p, year);
      laid += eggBroods.laidCount;
      fertilized += eggBroods.fertilizedCount;
      hatched += eggBroods.hatchedCount;
      fledged += eggBroods.fledgedCount;
      switch (p.status) {
        case BreedingPairStatus.active:
          pairsActive++;
        case BreedingPairStatus.paused:
          pairsPaused++;
        case BreedingPairStatus.finished:
          pairsFinished++;
      }
    }
    return _Roster(
      total: pairs.length,
      cages: cages.length,
      laid: laid,
      fertilized: fertilized,
      hatched: hatched,
      fledged: fledged,
      pairsActive: pairsActive,
      pairsPaused: pairsPaused,
      pairsFinished: pairsFinished,
    );
  }

  List<Brood> _broodsInYear(BreedingPair p, int? year) {
    final all = p.broodsResolved;
    if (year == null) return all;
    return all.where((b) => b.start != null && b.start!.year == year).toList();
  }
}

class _CageGroup {
  _CageGroup({
    required this.cage,
    required this.pairs,
    required this.laid,
    required this.fertilized,
    required this.hatched,
    required this.fledged,
    required this.withBrood,
  });

  final String cage;
  final List<BreedingPair> pairs;
  final int laid;
  final int fertilized;
  final int hatched;
  final int fledged;
  final int withBrood;
}

class _Roster {
  _Roster({
    required this.total,
    required this.cages,
    required this.laid,
    required this.fertilized,
    required this.hatched,
    required this.fledged,
    required this.pairsActive,
    required this.pairsPaused,
    required this.pairsFinished,
  });

  final int total;
  final int cages;
  final int laid;
  final int fertilized;
  final int hatched;
  final int fledged;
  final int pairsActive;
  final int pairsPaused;
  final int pairsFinished;
}

class _SummaryHeader extends StatelessWidget {
  const _SummaryHeader({
    required this.years,
    required this.selected,
    required this.onYearTap,
    required this.roster,
    required this.sortField,
    required this.sortAsc,
    required this.onSortChanged,
  });

  final List<int> years;
  final int? selected;
  final ValueChanged<int?> onYearTap;
  final _Roster roster;
  final BreedingPairSortField sortField;
  final bool sortAsc;
  final void Function(BreedingPairSortField field, bool ascending)
      onSortChanged;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tr = context.tr;
    final currentYear = DateTime.now().year;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 44,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.fromLTRB(14, 10, 14, 8),
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 6, top: 5),
                child: Text(
                  tr.breeding_pairs.year_filter.label,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.2,
                    color: cs.onSurfaceVariant,
                  ),
                ),
              ),
              ...years.map((y) {
                final active = selected == y;
                final isCurrent = y == currentYear;
                return Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: _YearChip(
                    label: '$y',
                    active: active,
                    highlighted: isCurrent && !active,
                    onTap: () => onYearTap(y),
                  ),
                );
              }),
              _YearChip(
                label: tr.breeding_pairs.year_filter.all,
                active: selected == null,
                highlighted: false,
                onTap: () => onYearTap(null),
              ),
            ],
          ),
        ),
        Container(height: 1, color: cs.outlineVariant),
        Padding(
          padding: const EdgeInsets.fromLTRB(14, 10, 14, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${roster.total}',
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: cs.onSurface,
                      height: 1,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Text(
                      '${roster.total == 1 ? tr.breeding_pairs.pair_one : tr.breeding_pairs.pair_other} · '
                      '${tr.breeding_pairs.cages_count(Count: roster.cages)}',
                      style: TextStyle(
                        fontSize: 12,
                        color: cs.onSurfaceVariant,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Spacer(),
                  MiniStats(
                    laid: roster.laid,
                    fertilized: roster.fertilized,
                    hatched: roster.hatched,
                    fledged: roster.fledged,
                  ),
                  const SizedBox(width: 10),
                  SortChip<BreedingPairSortField>(
                    current: sortField,
                    ascending: sortAsc,
                    options: BreedingPairSortField.values,
                    labelFor: (ctx, f) => switch (f) {
                      BreedingPairSortField.cage =>
                        ctx.tr.breeding_pairs.sort_by.cage,
                      BreedingPairSortField.updated =>
                        ctx.tr.breeding_pairs.sort_by.updated,
                      BreedingPairSortField.created =>
                        ctx.tr.breeding_pairs.sort_by.created,
                    },
                    onChanged: onSortChanged,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  if (roster.total > 0) ...[
                    const SizedBox(height: 8),
                    _PairStatusRow(
                      total: roster.total,
                      active: roster.pairsActive,
                      paused: roster.pairsPaused,
                      finished: roster.pairsFinished,
                    ),
                  ],
                  const Spacer(),
                  InkWell(
                    onTap: () => _showStatsLegend(context),
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Tooltip(
                        message: context.tr.breeding_pairs.stats.legend.title,
                        child: Icon(
                          AppIcons.snackInfo,
                          size: 18,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

void _showStatsLegend(BuildContext context) {
  final tr = context.tr;
  final abbr = tr.breeding_pairs.stats.abbr;
  final label = tr.breeding_pairs.stats.label;
  showDialog<void>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(tr.breeding_pairs.stats.legend.title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _LegendRow(abbr: abbr.laid, label: label.laid),
          _LegendRow(abbr: abbr.fertilized, label: label.fertilized),
          _LegendRow(abbr: abbr.hatched, label: label.hatched),
          _LegendRow(abbr: abbr.fledged, label: label.fledged),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(ctx),
          child: Text(tr.common.ok),
        ),
      ],
    ),
  );
}

class _LegendRow extends StatelessWidget {
  const _LegendRow({required this.abbr, required this.label});

  final String abbr;
  final String label;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 40,
            child: Text(
              abbr,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: cs.onSurface,
                letterSpacing: 0.5,
              ),
            ),
          ),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 14,
                color: cs.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _YearChip extends StatelessWidget {
  const _YearChip({
    required this.label,
    required this.active,
    required this.highlighted,
    required this.onTap,
  });

  final String label;
  final bool active;
  final bool highlighted;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(100),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: active ? cs.primary : cs.surfaceContainer,
          borderRadius: BorderRadius.circular(100),
          border: active
              ? null
              : Border.all(
                  color: highlighted ? cs.primary : cs.outlineVariant,
                ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 13,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.3,
                color: active
                    ? cs.onPrimary
                    : (highlighted ? cs.primary : cs.onSurfaceVariant),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HistoryBadge extends StatelessWidget {
  const _HistoryBadge({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bg = isDark ? const Color(0xFF3A3325) : const Color(0xFFFBF3D8);
    final fg = isDark ? const Color(0xFFE0C476) : const Color(0xFF7A6418);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(AppIcons.history, size: 11, color: fg),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5,
              color: fg,
            ),
          ),
        ],
      ),
    );
  }
}

class _PairStatusRow extends StatelessWidget {
  const _PairStatusRow({
    required this.total,
    required this.active,
    required this.paused,
    required this.finished,
  });

  final int total;
  final int active;
  final int paused;
  final int finished;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tr = context.tr;
    final status = tr.breeding_pairs.status;
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        _BroodStatusChip(
          count: active,
          label: status.active,
          color: cs.primary,
        ),
        _BroodStatusChip(
          count: paused,
          label: status.paused,
          color: cs.tertiary,
        ),
        _BroodStatusChip(
          count: finished,
          label: status.finished,
          color: cs.outline,
        ),
      ],
    );
  }
}

class _BroodStatusChip extends StatelessWidget {
  const _BroodStatusChip({
    required this.count,
    required this.label,
    required this.color,
  });

  final int count;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isZero = count == 0;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: cs.surfaceContainer,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 7,
            height: 7,
            decoration: BoxDecoration(
              color: isZero ? cs.outline : color,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 5),
          Text(
            '$count',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: isZero ? cs.onSurfaceVariant : cs.onSurface,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: cs.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _GroupCard extends StatelessWidget {
  const _GroupCard({
    required this.group,
    required this.selectedYear,
    required this.onTapPair,
  });

  final _CageGroup group;
  final int? selectedYear;
  final ValueChanged<BreedingPair> onTapPair;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tr = context.tr;
    return Container(
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: cs.outlineVariant),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
            decoration: BoxDecoration(
              color: cs.surfaceContainer,
              border: Border(
                bottom: BorderSide(color: cs.outlineVariant),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 12,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: cs.primaryContainer,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        AppIcons.cage,
                        size: 18,
                        color: cs.primary,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            group.cage,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: cs.onSurface,
                              letterSpacing: 0.2,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 2),
                          Text(
                            '${group.pairs.length} ${group.pairs.length == 1 ? tr.breeding_pairs.pair_one : tr.breeding_pairs.pair_other}',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: cs.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MiniStats(
                      laid: group.laid,
                      fertilized: group.fertilized,
                      hatched: group.hatched,
                      fledged: group.fledged,
                    ),
                    if (group.withBrood > 0)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: cs.tertiaryContainer,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              AppIcons.egg,
                              size: 11,
                              color: cs.onTertiaryContainer,
                            ),
                            const SizedBox(width: 3),
                            Text(
                              '${group.withBrood}',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: cs.onTertiaryContainer,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          for (var i = 0; i < group.pairs.length; i++)
            Padding(
              padding: EdgeInsets.fromLTRB(
                10,
                i == 0 ? 8 : 0,
                10,
                i == group.pairs.length - 1 ? 10 : 8,
              ),
              child: _PairCard(
                pair: group.pairs[i],
                selectedYear: selectedYear,
                onTap: () => onTapPair(group.pairs[i]),
              ),
            ),
        ],
      ),
    );
  }
}

class _CageFunnel extends StatelessWidget {
  const _CageFunnel({
    required this.laid,
    required this.fertilized,
    required this.hatched,
    required this.fledged,
  });

  final int laid;
  final int fertilized;
  final int hatched;
  final int fledged;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final abbr = context.tr.breeding_pairs.stats.abbr;
    Widget cell(String label, int v, Color color) {
      final isZero = v == 0;
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w700,
              color: cs.onSurfaceVariant,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            '$v',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: isZero ? cs.outline : color,
            ),
          ),
        ],
      );
    }

    Widget arrow() => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Icon(
            Icons.arrow_forward,
            size: 10,
            color: cs.outline,
          ),
        );

    return Row(
      children: [
        cell(abbr.laid, laid, context.appColors.sexFemale),
        arrow(),
        cell(abbr.fertilized, fertilized, cs.tertiary),
        arrow(),
        cell(abbr.hatched, hatched, cs.primary),
        arrow(),
        cell(abbr.fledged, fledged, cs.secondary),
      ],
    );
  }
}

class _MiniFunnel extends StatelessWidget {
  const _MiniFunnel({
    required this.laid,
    required this.hatched,
    required this.fledged,
  });

  final int laid;
  final int hatched;
  final int fledged;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    TextStyle style(Color c, bool isZero) => TextStyle(
          fontFamily: 'monospace',
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: isZero ? cs.outline : c,
        );
    final sep = TextStyle(color: cs.outline, fontSize: 11);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('$laid', style: style(context.appColors.sexFemale, laid == 0)),
        Text(' → ', style: sep),
        Text('$hatched', style: style(cs.tertiary, hatched == 0)),
        Text(' → ', style: sep),
        Text('$fledged', style: style(cs.primary, fledged == 0)),
      ],
    );
  }
}

class _PairCard extends StatelessWidget {
  const _PairCard({
    required this.pair,
    required this.selectedYear,
    required this.onTap,
  });

  final BreedingPair pair;
  final int? selectedYear;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tr = context.tr;
    final father = pair.fatherResolved;
    final mother = pair.motherResolved;
    final endedThisYear = selectedYear != null &&
        pair.end != null &&
        pair.end!.year == selectedYear;

    final broods = selectedYear == null
        ? pair.broodsResolved
        : pair.broodsResolved
            .where((b) => b.start != null && b.start!.year == selectedYear)
            .toList();
    final laid = broods.laidCount;
    final fertilized = broods.fertilizedCount;
    final hatched = broods.hatchedCount;
    final fledged = broods.fledgedCount;
    final hasActiveBrood = _pairHasActiveBrood(pair);
    final statusColor = _statusColor(context, pair.status);
    final start = pair.start;
    final end = pair.end;
    final yearLabel = start == null
        ? null
        : end != null
            ? '${start.year}–${end.year}'
            : '${start.year}';

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.circular(10),
          border: Border(left: BorderSide(color: statusColor, width: 6)),
        ),
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    pair.speciesResolved?.name ?? '',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: cs.onSurface,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (yearLabel != null)
                  Text(
                    yearLabel,
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 11,
                      color: cs.onSurfaceVariant,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                if (endedThisYear) ...[
                  const SizedBox(width: 6),
                  _FinishedTag(label: tr.breeding_pairs.finished_tag),
                ],
                if (hasActiveBrood) ...[
                  const SizedBox(width: 6),
                  Icon(AppIcons.egg, size: 14, color: cs.tertiary),
                ],
              ],
            ),
            const SizedBox(height: 8),
            _ParentLine(
              sex: Sex.male,
              ring: father?.ringNumber,
              color: father?.colorResolved,
            ),
            const SizedBox(height: 4),
            _ParentLine(
              sex: Sex.female,
              ring: mother?.ringNumber,
              color: mother?.colorResolved,
            ),
            const SizedBox(height: 10),
            MiniStats(
              laid: laid,
              fertilized: fertilized,
              hatched: hatched,
              fledged: fledged,
              expanded: true,
            ),
          ],
        ),
      ),
    );
  }

  Color _statusColor(BuildContext context, BreedingPairStatus status) {
    final cs = Theme.of(context).colorScheme;
    return switch (status) {
      BreedingPairStatus.active => cs.primary,
      BreedingPairStatus.paused => cs.tertiary,
      BreedingPairStatus.finished => cs.outline,
    };
  }
}

class _FinishedTag extends StatelessWidget {
  const _FinishedTag({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
      decoration: BoxDecoration(
        color: cs.errorContainer,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 9,
          fontWeight: FontWeight.w700,
          color: cs.onErrorContainer,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}

class _Swatch extends StatelessWidget {
  const _Swatch({required this.hex});

  final String hex;
  static const double size = 8;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    Color color;
    try {
      color = hexToColor(hex);
    } on FormatException {
      color = cs.surfaceContainer;
    }
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: cs.outline, width: 0.5),
      ),
    );
  }
}

class _ParentLine extends StatelessWidget {
  const _ParentLine({
    required this.sex,
    required this.ring,
    required this.color,
  });

  final Sex sex;
  final String? ring;
  final BirdColor? color;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final sexColor = sex == Sex.male
        ? context.appColors.sexMale
        : context.appColors.sexFemale;
    final hasColor = color != null;
    return Row(
      spacing: 4,
      children: [
        Text(
          sex.symbol,
          style: TextStyle(
            color: sexColor,
            fontWeight: FontWeight.w700,
            fontSize: 13,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ring ?? '???',
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: cs.onSurface,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                spacing: 4,
                children: [
                  if (hasColor && (color!.hex?.isNotEmpty ?? false))
                    _Swatch(hex: color!.hex!),
                  if (hasColor && (color!.name?.isNotEmpty ?? false))
                    Flexible(
                      child: Text(
                        color!.name!,
                        style: TextStyle(
                          fontSize: 10,
                          color: cs.onSurfaceVariant,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

