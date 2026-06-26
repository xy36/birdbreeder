import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/shared/icons.dart';

/// Compact single line of an egg's milestone dates (LG/BF/GS/AF).
///
/// Only set milestones are shown, separated by a thin dot, each as a small
/// colored abbreviation + short `dd.MM.` date. Keeps the row to one line.
class EggDateStats extends StatelessWidget {
  const EggDateStats({required this.egg, super.key});

  final Egg egg;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final abbr = context.tr.breeding_pairs.stats.abbr;
    final segments = <Widget>[
      _Segment(
        label: abbr.laid,
        date: egg.laidAt,
        color: EggStatus.laid.chipColor(context),
      ),
      if (egg.fertilizedAt != null)
        _Segment(
          label: abbr.fertilized,
          date: egg.fertilizedAt!,
          color: EggStatus.fertilized.chipColor(context),
        ),
      if (egg.hatchedAt != null)
        _Segment(
          label: abbr.hatched,
          date: egg.hatchedAt!,
          color: EggStatus.hatched.chipColor(context),
        ),
      if (egg.fledgedAt != null)
        _Segment(
          label: abbr.fledged,
          date: egg.fledgedAt!,
          color: EggStatus.fledged.chipColor(context),
        ),
    ];

    return Wrap(
      spacing: 6,
      runSpacing: 2,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        for (var i = 0; i < segments.length; i++) ...[
          if (i > 0) Icon(AppIcons.separator, size: 4, color: cs.outline),
          segments[i],
        ],
      ],
    );
  }
}

class _Segment extends StatelessWidget {
  const _Segment({
    required this.label,
    required this.date,
    required this.color,
  });

  final String label;
  final DateTime date;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final dd = date.day.toString().padLeft(2, '0');
    final mm = date.month.toString().padLeft(2, '0');
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 9,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.5,
            color: cs.onSurfaceVariant,
          ),
        ),
        const SizedBox(width: 3),
        Text(
          '$dd.$mm.',
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: 11,
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
      ],
    );
  }
}
