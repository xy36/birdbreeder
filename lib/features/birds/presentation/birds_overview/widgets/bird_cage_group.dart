import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/bird_row.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/shared/icons.dart';

/// A grouped card holding all birds that share a cage / aviary.
///
/// The header surfaces the per-cage stats used in the daily "who is in which
/// cage" workflow: occupant count, chick count, deceased count and a sale
/// badge. Each contained bird renders as a compact [BirdRow].
class BirdCageGroup extends StatelessWidget {
  const BirdCageGroup({
    required this.cage,
    required this.cageName,
    required this.birds,
    super.key,
    this.onTapBird,
  });

  final Cage? cage;
  final String cageName;
  final List<Bird> birds;
  final void Function(Bird bird)? onTapBird;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final deceased = birds.where((b) => b.diedAt != null).length;
    final forSale = birds
        .where(
          (b) => b.saleStatus == SaleStatus.listed && b.askingPrice != null,
        )
        .length;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: cs.outlineVariant),
      ),
      child: Column(
        children: [
          _Header(
            cage: cage,
            cageName: cageName,
            count: birds.length,
            deceased: deceased,
            forSale: forSale,
          ),
          for (final (i, bird) in birds.indexed)
            BirdRow(
              bird: bird,
              isLast: i == birds.length - 1,
              onTap: onTapBird == null ? null : () => onTapBird!(bird),
            ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.cage,
    required this.cageName,
    required this.count,
    required this.deceased,
    required this.forSale,
  });

  final Cage? cage;
  final String cageName;
  final int count;
  final int deceased;
  final int forSale;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: cs.surfaceContainer,
        border: Border(bottom: BorderSide(color: cs.outlineVariant)),
      ),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: cs.primaryContainer,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(_cageIcon, size: 18, color: cs.primary),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  cageName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.2,
                    color: cs.onSurface,
                  ),
                ),
                const SizedBox(height: 2),
                _meta(context),
              ],
            ),
          ),
          if (forSale > 0) ...[
            const SizedBox(width: 8),
            _SaleBadge(count: forSale),
          ],
          const SizedBox(width: 4),
          Icon(AppIcons.expand, size: 20, color: cs.onSurfaceVariant),
        ],
      ),
    );
  }

  Widget _meta(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final overview = context.tr.birds.overview;
    final style = TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: cs.onSurfaceVariant,
    );

    return Row(
      children: [
        Text(
          '$count',
          style: const TextStyle(
            fontFamily: 'monospace',
            fontSize: 18,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(width: 4),
        Text(overview.birds_label, style: style),
        if (deceased > 0) ...[
          _Dot(color: cs.outline),
          Text('† $deceased', style: style.copyWith(color: cs.error)),
        ],
      ],
    );
  }

  IconData get _cageIcon => switch (cage?.type) {
        CageType.aviary => AppIcons.cageAviary,
        CageType.breedingBox => AppIcons.cageBreedingBox,
        CageType.quarantine => AppIcons.cageQuarantine,
        null => AppIcons.cage,
      };
}

class _Dot extends StatelessWidget {
  const _Dot({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        width: 3,
        height: 3,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}

class _SaleBadge extends StatelessWidget {
  const _SaleBadge({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: cs.primaryContainer,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(AppIcons.sell, size: 11, color: cs.onPrimaryContainer),
          const SizedBox(width: 3),
          Text(
            '$count',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: cs.onPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
