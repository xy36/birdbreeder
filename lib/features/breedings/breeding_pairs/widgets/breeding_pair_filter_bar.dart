import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/breedings/breeding_pairs/cubit/breeding_pairs_filter_cubit.dart';
import 'package:birdbreeder/features/breedings/breeding_pairs/widgets/breeding_pair_filter_dimension_sheet.dart';
import 'package:birdbreeder/models/breeding/breeding_pair_filter.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

/// Always-visible inline filter bar for the breeding pairs overview.
///
/// One chip per dimension (species, colour). Each opens a focused
/// [BreedingPairFilterDimensionSheet]; active dimensions show a count. A
/// trailing reset chip appears once any dimension diverges from the default.
class BreedingPairFilterBar extends StatelessWidget {
  const BreedingPairFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<BreedingPairsFilterCubit>();
    final f = cubit.state;
    final def = cubit.defaultFilter;
    final cs = Theme.of(context).colorScheme;

    final dimensions = <_DimensionChip>[
      _DimensionChip(
        dimension: BreedingPairFilterDimension.species,
        label: context.tr.common.species,
        count: f.speciesIds.length,
        active: f.speciesIds.isNotEmpty,
      ),
      _DimensionChip(
        dimension: BreedingPairFilterDimension.color,
        label: context.tr.common.color,
        count: f.colorIds.length,
        active: f.colorIds.isNotEmpty,
      ),
    ];

    return SizedBox(
      height: 48,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(AppIcons.filter, size: 20, color: cs.onSurfaceVariant),
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
    BreedingPairFilterDimension dimension,
  ) async {
    final cubit = context.read<BreedingPairsFilterCubit>();
    final pairs = context
        .read<BirdBreederCubit>()
        .state
        .birdBreederResources
        .breedingPairs;

    final applied = await openSheet<BreedingPairFilter?>(
      context,
      BreedingPairFilterDimensionSheet(
        dimension: dimension,
        initial: cubit.state,
        countFor: (filter) => cubit.filterPairsWith(filter, pairs).length,
      ),
    );
    if (applied != null && context.mounted) {
      cubit.applyFilter(applied);
    }
  }
}

class _DimensionChip {
  const _DimensionChip({
    required this.dimension,
    required this.label,
    required this.count,
    required this.active,
  });

  final BreedingPairFilterDimension dimension;
  final String label;
  final int count;
  final bool active;
}

/// Pill that reads as a dropdown: label + count badge (when active) + chevron.
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
