import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/breeding/breeding_pair_actions.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class BreedingPairCard extends StatelessWidget {
  BreedingPairCard({
    required this.breedingPair,
    required this.onTap,
    super.key,
  }) : _broods = breedingPair.broodsResolved;

  final BreedingPair breedingPair;
  final VoidCallback onTap;

  final List<Brood> _broods;

  List<Brood> get broods => breedingPair.broodsResolved;
  int get laid => _broods.laidCount;
  int get hatched => _broods.hatchedCount;
  int get fledged => _broods.fledgedCount;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BreedingPairHeader(breedingPair: breedingPair),
              const Divider(),
              if (breedingPair.cageResolved?.name != null)
                Row(
                  children: [
                    const Icon(AppIcons.cage, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      breedingPair.cageResolved!.name!,
                      style: context.textTheme.bodySmall,
                    ),
                  ],
                ),
              Row(
                children: [
                  Expanded(
                    child: Wrap(
                      spacing: 16,
                      runSpacing: 8,
                      children: [
                        _Stat(
                          icon: AppIcons.egg,
                          label: context.tr.common.eggs_short(n: laid),
                          value: laid,
                        ),
                        _Stat(
                          icon: AppIcons.hatched,
                          label: context.tr.common.hatched_short,
                          value: hatched,
                        ),
                        _Stat(
                          icon: AppIcons.fledged,
                          label: context.tr.common.fledged_short,
                          value: fledged,
                        ),
                      ],
                    ),
                  ),
                  moreMenu<BreedingPair>(
                    context,
                    breedingPair,
                    BreedingPairActions.values.map((action) {
                      return (
                        icon: action.icon,
                        label: action.getLabel(context),
                        action: action.executeAction,
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
}

class _UnknownParentLabel extends StatelessWidget {
  const _UnknownParentLabel();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Text(
        '???',
        style: context.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class _ParentLabel extends StatelessWidget {
  const _ParentLabel({required this.bird});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${bird.ringNumber}',
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            spacing: 4,
            children: [
              bird.sex.getIcon(context, size: 18),
              Text(
                '${bird.speciesResolved?.name}',
                style: context.textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
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

class BreedingPairHeader extends StatelessWidget {
  const BreedingPairHeader({
    required this.breedingPair,
    super.key,
    this.showSubtitle = false,
  });

  final bool showSubtitle;

  final BreedingPair breedingPair;

  Bird? get father => breedingPair.fatherResolved;

  Bird? get mother => breedingPair.motherResolved;

  @override
  Widget build(BuildContext context) {
    final sub = <InlineSpan>[];

    if (breedingPair.cageResolved?.name != null) {
      sub.addAll(
        [
          const WidgetSpan(child: Icon(AppIcons.cage, size: 16)),
          TextSpan(text: ' ${breedingPair.cageResolved!.name}'),
        ],
      );
    }
    if (breedingPair.start != null) {
      if (sub.isNotEmpty) sub.add(const TextSpan(text: '  •  '));
      final since = MaterialLocalizations.of(context)
          .formatShortDate(breedingPair.start!);
      sub.addAll([
        const WidgetSpan(child: Icon(AppIcons.date, size: 16)),
        TextSpan(text: context.tr.brood.since(Date: since)),
      ]);
    }

    return Column(
      spacing: 8,
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                spacing: 12,
                children: [
                  if (father != null)
                    _ParentLabel(
                      bird: father!,
                    )
                  else
                    const _UnknownParentLabel(),
                  const Icon(AppIcons.close),
                  if (mother != null)
                    _ParentLabel(
                      bird: mother!,
                    )
                  else
                    const _UnknownParentLabel(),
                ],
              ),
            ),
            breedingPair.status.getChip(context),
          ],
        ),
        if (showSubtitle)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (sub.isNotEmpty)
                      Text.rich(
                        TextSpan(children: sub),
                        style: context.bodySmall?.copyWith(
                          color:
                              context.bodySmall?.color?.withValues(alpha: 0.8),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ),
            ],
          ),
      ],
    );
  }
}
