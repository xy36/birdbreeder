import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/features/breedings/shared/mini_stats.dart';
import 'package:birdbreeder/models/breeding/brood_actions.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class BroodCard extends StatelessWidget {
  const BroodCard({
    required this.brood,
    required this.breedingPair,
    super.key,
  });

  final Brood brood;
  final BreedingPair breedingPair;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    final title = '${context.tr.common.clutches} #';
    final range = _formatRange(context, brood.start, brood.end);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => onOpenBrood(context, brood),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  brood.status.icon,
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      title,
                      style: text.titleMedium
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                  BroodActions.buildMenu(context, brood, breedingPair),
                ],
              ),
              const SizedBox(height: 6),
              if (range != null)
                Text(
                  range,
                  style: text.bodySmall?.copyWith(
                    color: text.bodySmall?.color?.withValues(alpha: 0.8),
                  ),
                ),
              const SizedBox(height: 12),
              MiniStats(
                laid: brood.laidCount,
                fertilized: brood.fertilizedCount,
                hatched: brood.hatchedCount,
                fledged: brood.fledgedCount,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? _formatRange(BuildContext context, DateTime? start, DateTime? end) {
    if (start == null && end == null) return null;
    final l = MaterialLocalizations.of(context);
    final s = start != null ? l.formatShortDate(start) : '—';
    final e = end != null ? l.formatShortDate(end) : '?';
    return '$s – $e';
  }
}
