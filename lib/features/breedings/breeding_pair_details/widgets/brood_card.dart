import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/models/breeding/brood_actions.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/shared/icons.dart';
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
          padding: const EdgeInsets.all(16),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    spacing: 16,
                    runSpacing: 8,
                    children: [
                      _Stat(
                        icon: AppIcons.egg,
                        label: context.tr.common.eggs_short(n: brood.laidCount),
                        value: brood.laidCount,
                      ),
                      _Stat(
                        icon: AppIcons.hatched,
                        label: context.tr.common.hatched_short,
                        value: brood.hatchedCount,
                      ),
                      _Stat(
                        icon: AppIcons.fledged,
                        label: context.tr.common.fledged_short,
                        value: brood.fledgedCount,
                      ),
                    ],
                  ),
                  moreMenu<Brood>(
                    context,
                    brood,
                    BroodActions.values.map((action) {
                      return (
                        icon: action.icon,
                        label: action.getLabel(context),
                        action: (BuildContext ctx, Brood brood) =>
                            action.executeAction(
                              ctx,
                              brood,
                              breedingPair,
                            ),
                      );
                    }).toList(),
                  ),
                ],
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

class _Stat extends StatelessWidget {
  const _Stat({required this.icon, required this.label, required this.value});
  final IconData icon;
  final String label;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16),
        const SizedBox(width: 4),
        Text('$value $label', style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
