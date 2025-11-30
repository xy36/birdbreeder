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
    this.compact = false,
    this.onTap,
    this.onDuplicate,
    this.onEdit,
    this.onMoveCage,
    this.onDelete,
  });

  final Bird bird;
  // If true, renders a denser layout (good for grids).
  final bool compact;

  final VoidCallback? onTap;
  final VoidCallback? onDuplicate;
  final VoidCallback? onEdit;
  final VoidCallback? onMoveCage;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    // Build small status chips based on bird flags/dates.
    final statusChips = <Widget>[
      _chip(context, bird.saleStatus.getDisplayName(context)),
      if (bird.lifeStage != null)
        _chip(context, bird.lifeStage!.getDisplayName(context)),
    ];

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: Row(
            children: [
              _leadingAvatar(context),
              const SizedBox(width: 8),
              // Title + details
              Expanded(
                child: _BirdMainInfo(
                  bird: bird,
                  compact: compact,
                ),
              ),
              const SizedBox(width: 8),
              // Trailing actions & status
              Column(
                spacing: 6,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ...statusChips,
                  BirdActions.buildMenu(context, bird),
                ],
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
        CircleAvatar(
          radius: compact ? 18 : 22,
          // TODO: Replace with bird image if you have one
          child: const Icon(AppIcons.birdAvatar),
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
  Widget _chip(BuildContext context, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: Theme.of(context).colorScheme.onSurface.withAlpha(30),
      ),
      child: Text(text, style: const TextStyle(fontSize: 12)),
    );
  }
}

/// Main info block (title + chips + optional age)
class _BirdMainInfo extends StatelessWidget {
  const _BirdMainInfo({
    required this.bird,
    required this.compact,
  });

  final Bird bird;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleMedium;
    final ring = bird.ringNumber ?? '—';

    // Compose attribute chips (species/color/cage)
    final attrChips = <Widget>[
      if (bird.speciesResolved?.name != null)
        _attrChip(context, bird.speciesResolved!.name!),
      if (bird.colorResolved?.name != null)
        _attrChip(context, bird.colorResolved!.name!),
      if (bird.cageResolved?.name != null)
        _attrChip(context, bird.cageResolved!.name!),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(ring, style: titleStyle),
        if (!compact) ...[
          const SizedBox(height: 6),
          Wrap(
            spacing: 6,
            runSpacing: 8,
            children: attrChips,
          ),
          const SizedBox(height: 6),
          Text(
            bird.hatchedAt != null
                ? 'Alter: ${_ageString(bird.hatchedAt!)}'
                : 'Alter: —',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ],
    );
  }

  /// Small neutral chip for attributes (species, color, cage).
  Widget _attrChip(BuildContext context, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.onSurfaceVariant.withAlpha(40),
      ),
      child: Text(text, style: const TextStyle(fontSize: 12)),
    );
  }

  /// Rough age calculation (years/months).
  String _ageString(DateTime born) {
    final now = DateTime.now();
    var months = (now.year - born.year) * 12 + (now.month - born.month);
    final years = months ~/ 12;
    months = months % 12;
    if (years > 0 && months > 0) return '$years J, $months M';
    if (years > 0) return '$years J';
    return '$months M';
  }
}
