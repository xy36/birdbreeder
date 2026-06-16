import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';

/// Always-visible summary header for the grouped birds overview.
///
/// Shows the large monospace roster total, a "{birds} · {cages}" subtitle, an
/// accent sale chip and the active grouping indicator — mirroring the sticky
/// summary of the "Grouped by Cage" design.
class BirdsRosterSummary extends StatelessWidget {
  const BirdsRosterSummary({
    required this.total,
    required this.cageCount,
    required this.forSale,
    super.key,
    this.trailing,
  });

  final int total;
  final int cageCount;
  final int forSale;

  /// Optional control rendered at the end of the stat row (e.g. the sort chip).
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final overview = context.tr.birds.overview;

    return Container(
      padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
      decoration: BoxDecoration(
        color: cs.surface,
        border: Border(bottom: BorderSide(color: cs.outlineVariant)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '$total',
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                  height: 1,
                  color: cs.onSurface,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  overview.subtitle(Birds: total, Cages: cageCount),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: cs.onSurfaceVariant,
                  ),
                ),
              ),
              if (forSale > 0) _SaleChip(count: forSale),
              if (trailing != null) ...[
                const SizedBox(width: 4),
                trailing!,
              ],
            ],
          ),
        ],
      ),
    );
  }
}

class _SaleChip extends StatelessWidget {
  const _SaleChip({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: cs.primaryContainer,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(AppIcons.sell, size: 12, color: cs.onPrimaryContainer),
          const SizedBox(width: 4),
          Text(
            context.tr.birds.overview.for_sale(Count: count),
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: cs.onPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
