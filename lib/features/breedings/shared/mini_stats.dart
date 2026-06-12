import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/theme/app_colors.dart';

class MiniStats extends StatelessWidget {
  const MiniStats({
    required this.laid,
    required this.fertilized,
    required this.hatched,
    required this.fledged,
    super.key,
    this.expanded = false,
  });

  final int laid;
  final int fertilized;
  final int hatched;
  final int fledged;
  final bool expanded;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final abbr = context.tr.breeding_pairs.stats.abbr;
    final stats = [
      MiniStat(
        label: abbr.laid,
        value: laid,
        color: context.appColors.sexFemale,
      ),
      MiniStat(label: abbr.fertilized, value: fertilized, color: cs.tertiary),
      MiniStat(label: abbr.hatched, value: hatched, color: cs.primary),
      MiniStat(label: abbr.fledged, value: fledged, color: cs.secondary),
    ];
    return Row(
      mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
      spacing: 4,
      children: expanded ? [for (final s in stats) Expanded(child: s)] : stats,
    );
  }
}

class MiniStat extends StatelessWidget {
  const MiniStat({
    required this.label,
    required this.value,
    required this.color,
    super.key,
  });

  final String label;
  final int value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isZero = value == 0;
    return Container(
      constraints: const BoxConstraints(minWidth: 30),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      decoration: BoxDecoration(
        color: cs.surfaceContainer,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.w700,
              color: cs.onSurfaceVariant,
              letterSpacing: 0.5,
            ),
          ),
          Text(
            '$value',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: isZero ? cs.onSurfaceVariant : color,
              letterSpacing: 0.3,
            ),
          ),
        ],
      ),
    );
  }
}
