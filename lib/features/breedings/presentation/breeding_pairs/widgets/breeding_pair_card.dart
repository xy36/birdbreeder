import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pairs/models/breeding_pair_actions.dart';
import 'package:birdbreeder/shared/icons.dart';

class BreedingPairCard extends StatelessWidget {
  BreedingPairCard({
    required this.breedingPair,
    super.key,
    required this.onTap,
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
    final father = breedingPair.fatherResolved;
    final mother = breedingPair.motherResolved;

    if (father == null || mother == null) {
      return const SizedBox();
    }
    final theme = Theme.of(context);

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
              Row(
                children: [
                  Expanded(
                    child: Row(
                      spacing: 12,
                      children: [
                        _ParentLabel(
                          bird: father,
                        ),
                        const Icon(AppIcons.close),
                        _ParentLabel(
                          bird: mother,
                        ),
                      ],
                    ),
                  ),
                  breedingPair.status.getChip(context),
                ],
              ),
              const Divider(),
              if (breedingPair.cageResolved?.name != null)
                Row(
                  children: [
                    const Icon(AppIcons.cage, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      breedingPair.cageResolved!.name!,
                      style: theme.textTheme.bodySmall,
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
                  _moreMenu(context, breedingPair),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _moreMenu(BuildContext context, BreedingPair breedingPair) {
    return PopupMenuButton<BreedingPairActions>(
      onSelected: (v) => v.executeAction(context, breedingPair),
      itemBuilder: (context) => BreedingPairActions.values
          .map((action) => action.getItem(context))
          .toList(),
      icon: const Icon(AppIcons.more),
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
