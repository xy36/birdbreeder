import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bird_screen.dart';

/// Reusable card widget for displaying a bird in a list/grid.
class BirdCard extends StatelessWidget {
  const BirdCard({
    super.key,
    required this.bird,
    this.compact = false,
    this.onTap,
    this.onDuplicate,
    this.onMoveCage,
    this.onDelete,
  });

  final Bird bird;
  // If true, renders a denser layout (good for grids).
  final bool compact;

  final VoidCallback? onTap;
  final VoidCallback? onDuplicate;
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
      elevation: 1,
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ...statusChips,
                  const SizedBox(height: 6),
                  _moreMenu(context),
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
          child: const Icon(Icons.pets_rounded),
        ),
        Positioned(
          right: -2,
          bottom: -2,
          child: _sexBadge(context, bird.sex),
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
        color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.6),
      ),
      child: Text(text, style: const TextStyle(fontSize: 12)),
    );
  }

  /// Small circular badge for sex.
  Widget _sexBadge(BuildContext context, Sex sex) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black.withOpacity(0.65),
      ),
      child: sex.getIcon(context, size: 16),
    );
  }

  /// Popup menu with common actions.
  Widget _moreMenu(BuildContext context) {
    return PopupMenuButton<BirdActions>(
      onSelected: (v) {
        switch (v) {
          case BirdActions.duplicate:
            onDuplicate?.call();
            break;
          case BirdActions.delete:
            onDelete?.call();
            break;
        }
      },
      itemBuilder: (context) => [
        BirdActions.duplicate.getItem(context),
        BirdActions.delete.getItem(context),
      ],
      icon: const Icon(Icons.more_vert_rounded),
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
            runSpacing: -8,
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
        color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.5),
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
