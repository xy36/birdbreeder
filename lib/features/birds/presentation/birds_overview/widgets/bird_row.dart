import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/models/bird/bird_actions.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/shared/icons.dart';

/// Ultra-compact, single-line row for a bird inside a cage group.
///
/// Layout mirrors the "Grouped by Cage" overview: a tinted sex glyph, the ring
/// number in a monospace font with an optional life-stage marker, a subtitle
/// pairing the colour swatch with colour and species, an optional sale price
/// and the bird's age. Deceased birds are dimmed.
class BirdRow extends StatelessWidget {
  const BirdRow({
    required this.bird,
    required this.isLast,
    super.key,
    this.onTap,
    this.showCage = false,
  });

  final Bird bird;
  final bool isLast;
  final VoidCallback? onTap;

  /// Whether to include the cage / aviary name in the subtitle. Used in the
  /// ungrouped (flat) view where the cage isn't shown in a group header.
  final bool showCage;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDeceased = bird.diedAt != null;
    final isForSale =
        bird.saleStatus == SaleStatus.listed && bird.askingPrice != null;

    return InkWell(
      onTap: onTap,
      child: Opacity(
        opacity: isDeceased ? 0.55 : 1,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            border: Border(
              bottom: isLast
                  ? BorderSide.none
                  : BorderSide(color: cs.outlineVariant),
            ),
          ),
          child: Row(
            children: [
              _SexGlyph(sex: bird.sex),
              const SizedBox(width: 10),
              Expanded(child: _main(context)),
              if (bird.isSold) ...[
                const SizedBox(width: 8),
                _SoldTag(price: bird.finalPrice),
              ] else if (isForSale) ...[
                const SizedBox(width: 8),
                _PriceTag(price: bird.askingPrice!),
              ],
              const SizedBox(width: 8),
              _AgeLabel(bird: bird),
              BirdActions.buildMenu(context, bird),
            ],
          ),
        ),
      ),
    );
  }

  Widget _main(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final ring = bird.ringNumber ?? '—';
    final color = bird.colorResolved;
    final species = bird.speciesResolved?.name;
    final cage = bird.cageResolved;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            if (showCage && cage != null) ...[
              // cage icon
              Icon(
                switch (cage.type) {
                  CageType.aviary => AppIcons.cageAviary,
                  CageType.breedingBox => AppIcons.cageBreedingBox,
                  CageType.quarantine => AppIcons.cageQuarantine,
                  null => AppIcons.cageAviary,
                },
                size: 11,
                color: cs.onSurfaceVariant,
              ),
              Text(
                cage.name ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 11, color: cs.onSurfaceVariant),
              ),
              const SizedBox(width: 4),
            ],
            Flexible(
              child: Text(
                ring,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.3,
                  color: cs.onSurface,
                ),
              ),
            ),
            if (bird.diedAt != null) ...[
              const SizedBox(width: 6),
              Text(
                '†',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: cs.error,
                ),
              ),
            ],
          ],
        ),
        const SizedBox(height: 1),
        Row(
          children: [
            if (color?.hex != null && color!.hex!.isNotEmpty) ...[
              _Swatch(hex: color.hex!),
              const SizedBox(width: 4),
            ],
            Flexible(
              child: Text(
                [
                  color?.name,
                  species,
                ].whereType<String>().join(' · '),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 11, color: cs.onSurfaceVariant),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _SexGlyph extends StatelessWidget {
  const _SexGlyph({required this.sex});

  final Sex sex;

  @override
  Widget build(BuildContext context) {
    final color = sex.colorOf(context);
    return Container(
      width: 22,
      height: 22,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color.withAlpha(38),
        shape: BoxShape.circle,
      ),
      child: Text(
        sex.symbol,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w700,
          color: color,
        ),
      ),
    );
  }
}

class _Swatch extends StatelessWidget {
  const _Swatch({required this.hex});

  final String hex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: _parseHex(hex),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Theme.of(context).colorScheme.outline),
      ),
    );
  }
}

class _PriceTag extends StatelessWidget {
  const _PriceTag({required this.price});

  final double price;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(AppIcons.sell, size: 11, color: cs.primary),
        const SizedBox(width: 3),
        Text(
          '${price.toStringAsFixed(0)}€',
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: cs.primary,
          ),
        ),
      ],
    );
  }
}

/// Muted "sold" marker shown in the row for birds with `saleStatus == sold`.
///
/// Mirrors [_PriceTag] but reads as a completed/past state (muted colours)
/// rather than the active green "for sale" tag. Shows the final price when set.
class _SoldTag extends StatelessWidget {
  const _SoldTag({this.price});

  final double? price;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final sold = context.tr.common.sale_status.sold;
    final label =
        price != null ? '$sold · ${price!.toStringAsFixed(0)}€' : sold;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: cs.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(AppIcons.sold, size: 11, color: cs.onSurfaceVariant),
          const SizedBox(width: 3),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: cs.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _AgeLabel extends StatelessWidget {
  const _AgeLabel({required this.bird});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    final born = bird.effectiveBornAt;
    if (born == null) return const SizedBox.shrink();
    return Text(
      _ageString(born),
      style: TextStyle(
        fontFamily: 'monospace',
        fontSize: 11,
        fontWeight: FontWeight.w600,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
    );
  }

  String _ageString(DateTime born) {
    final now = bird.diedAt ?? DateTime.now();
    var months = (now.year - born.year) * 12 + (now.month - born.month);
    final years = months ~/ 12;
    months = months % 12;
    final prefix = bird.diedAt != null ? '† ' : '';

    if (years <= 0 && months <= 0) {
      final days = now.difference(born).inDays;
      return '$prefix$days T';
    }
    if (years > 0 && months > 0) return '$prefix$years J, $months M';
    if (years > 0) return '$prefix$years J';
    return '$prefix$months M';
  }
}

Color _parseHex(String hex) {
  var value = hex.replaceAll('#', '').trim();
  if (value.length == 6) value = 'ff$value';
  final parsed = int.tryParse(value, radix: 16);
  return parsed == null ? Colors.transparent : Color(parsed);
}
