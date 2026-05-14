import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/models/bird/bird_actions.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/sex_badge.dart';

/// Reusable card widget for displaying a bird in a list/grid.
class BirdCard extends StatelessWidget {
  const BirdCard({
    required this.bird,
    super.key,
    this.onTap,
    this.onDuplicate,
    this.onEdit,
    this.onMoveCage,
    this.onDelete,
  });

  final Bird bird;

  final VoidCallback? onTap;
  final VoidCallback? onDuplicate;
  final VoidCallback? onEdit;
  final VoidCallback? onMoveCage;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    final ring = bird.ringNumber ?? '—';
    final isForSale =
        bird.saleStatus == SaleStatus.listed && bird.askingPrice != null;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Row(
            children: [
              _leadingAvatar(context),
              const SizedBox(width: 8),
              // Title + details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(ring, style: context.titleMedium),
                        if (isForSale)
                          Text(
                            '${bird.askingPrice!}€',
                            style: context.titleMedium?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                      ],
                    ),
                    Row(
                      spacing: 4,
                      children: <Widget>[
                        Text(
                          bird.speciesResolved!.name!,
                          style: context.bodyMedium?.copyWith(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        _separator(context),
                        Expanded(
                          child: Text(
                            bird.colorResolved!.name!,
                            style: context.bodyMedium?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (isForSale)
                          _chip(
                            context,
                            'Verkauf',
                            icon:
                                const Icon(AppIcons.birdSectionSale, size: 12),
                          ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      spacing: 4,
                      children: [
                        Row(
                          spacing: 4,
                          children: [
                            const Icon(
                              AppIcons.cage,
                              size: 12,
                            ),
                            Text(
                              bird.cageResolved?.name ?? '—',
                              style: context.bodySmall,
                            ),
                          ],
                        ),
                        _separator(context),
                        Text(
                          bird.bornAt != null ? _ageString(bird.bornAt!) : '—',
                          style: context.bodySmall,
                        ),
                        const Spacer(),
                        BirdActions.buildMenu(context, bird),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Leading avatar with sex badge overlay.
  Widget _leadingAvatar(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const CircleAvatar(
          radius: 22,
          //
          child: Icon(AppIcons.birdAvatar),
        ),
        Positioned(
          right: -2,
          bottom: -2,
          child: SexBadge(sex: bird.sex),
        ),
      ],
    );
  }

  /// Small rounded label used as neutral status display.
  Widget _chip(BuildContext context, String text, {Icon? icon}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: Theme.of(context).colorScheme.onSurface.withAlpha(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) icon,
          if (icon != null) const SizedBox(width: 4),
          Text(text, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _separator(BuildContext context) {
    return Container(
      width: 4,
      height: 4,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
    );
  }

  /// Rough age calculation (years/months).
  String _ageString(DateTime born) {
    final now = bird.diedAt ?? DateTime.now();
    var months = (now.year - born.year) * 12 + (now.month - born.month);
    final years = months ~/ 12;
    months = months % 12;

    final prefix = bird.diedAt != null ? '† ' : '';

    if (years > 0 && months > 0) return '$prefix$years J, $months M';
    if (years > 0) return '$prefix$years J';
    return '$prefix$months M';
  }
}
