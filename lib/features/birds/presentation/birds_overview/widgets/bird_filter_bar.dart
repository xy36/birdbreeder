import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/cubit/birds_filter_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/bird_filter_sheet/bird_filter_dimension_sheet.dart';
import 'package:birdbreeder/models/bird/bird_filter.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

/// Always-visible inline filter bar for the birds overview.
///
/// One chip per filter dimension (species, sex, color, owner, sale). Each chip
/// opens a focused [BirdFilterDimensionSheet]; active dimensions are highlighted
/// with a count. A trailing reset chip appears once any dimension diverges from
/// the default filter.
class BirdFilterBar extends StatelessWidget {
  const BirdFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<BirdsFilterCubit>();
    final f = cubit.state;
    final def = cubit.defaultFilter;

    final dimensions = <_DimensionChip>[
      _DimensionChip(
        dimension: BirdFilterDimension.species,
        label: context.tr.common.species,
        count: f.speciesIds.length,
        active: f.speciesIds.isNotEmpty,
      ),
      _DimensionChip(
        dimension: BirdFilterDimension.sex,
        label: context.tr.common.sex.name,
        count: f.sexes.length,
        active: f.sexes.isNotEmpty,
      ),
      _DimensionChip(
        dimension: BirdFilterDimension.color,
        label: context.tr.common.color,
        count: f.colorIds.length,
        active: f.colorIds.isNotEmpty,
      ),
      _DimensionChip(
        dimension: BirdFilterDimension.owner,
        label: context.tr.common.owner,
        count: f.ownerIds.length,
        active: !_sameSet(f.ownerIds, def.ownerIds),
      ),
      _DimensionChip(
        dimension: BirdFilterDimension.more,
        label: context.tr.birds.filter.more_title,
        count: (_sameSet(f.saleStatus, def.saleStatus) ? 0 : 1) +
            (f.showDeceased ? 1 : 0),
        active: !_sameSet(f.saleStatus, def.saleStatus) || f.showDeceased,
      ),
    ];

    final cs = Theme.of(context).colorScheme;

    return SizedBox(
      height: 48,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                AppIcons.filter,
                size: 20,
                color: cs.onSurfaceVariant,
              ),
            ),
          ),
          for (final d in dimensions)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Center(
                child: _FilterDropdownChip(
                  label: d.label,
                  count: d.count,
                  active: d.active,
                  onTap: () => _openDimension(context, d.dimension),
                ),
              ),
            ),
          if (f != def)
            Center(
              child: ActionChip(
                avatar: Icon(
                  AppIcons.filterAltOff,
                  size: 18,
                  color: cs.onErrorContainer,
                ),
                label: Text(context.tr.common.reset),
                backgroundColor: cs.errorContainer,
                labelStyle: TextStyle(color: cs.onErrorContainer),
                side: BorderSide(color: cs.outlineVariant),
                onPressed: cubit.resetFilter,
              ),
            ),
        ],
      ),
    );
  }

  Future<void> _openDimension(
    BuildContext context,
    BirdFilterDimension dimension,
  ) async {
    final cubit = context.read<BirdsFilterCubit>();
    final birds =
        context.read<BirdBreederCubit>().state.birdBreederResources.birds;

    final applied = await openSheet<BirdFilter?>(
      context,
      BirdFilterDimensionSheet(
        dimension: dimension,
        initial: cubit.state,
        defaultFilter: cubit.defaultFilter,
        countFor: (filter) => cubit.filterBirdsWith(filter, birds).length,
      ),
    );
    if (applied != null && context.mounted) {
      cubit.applyFilter(applied);
    }
  }

  static bool _sameSet<T>(List<T> a, List<T> b) =>
      a.length == b.length && a.toSet().containsAll(b);
}

class _DimensionChip {
  const _DimensionChip({
    required this.dimension,
    required this.label,
    required this.count,
    required this.active,
  });

  final BirdFilterDimension dimension;
  final String label;
  final int count;
  final bool active;
}

/// Pill that reads as a dropdown: label + count badge (when active) + chevron.
///
/// Filled when [active], outlined otherwise. The trailing chevron signals that
/// tapping opens a selection sheet rather than toggling in place.
class _FilterDropdownChip extends StatelessWidget {
  const _FilterDropdownChip({
    required this.label,
    required this.count,
    required this.active,
    required this.onTap,
  });

  final String label;
  final int count;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final fg = active ? cs.onPrimary : cs.onSurfaceVariant;
    final bg = active ? cs.primary : cs.surfaceContainer;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(100),
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 6, 8, 6),
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
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.2,
                color: fg,
              ),
            ),
            if (active && count > 0) ...[
              const SizedBox(width: 6),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.22),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  '$count',
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: fg,
                  ),
                ),
              ),
            ],
            Icon(AppIcons.expand, size: 18, color: fg),
          ],
        ),
      ),
    );
  }
}
