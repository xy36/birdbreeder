import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/breeding_pair_status_extension.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pairs/widgets/add_breeding_pair_sheet.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum BreedingPairActions {
  edit,
  delete;

  PopupMenuEntry<BreedingPairActions> getItem(BuildContext context) {
    return switch (this) {
      edit => PopupMenuItem(
          value: BreedingPairActions.edit,
          child: Text(context.tr.pop_up_menu.edit),
        ),
      delete => PopupMenuItem(
          value: BreedingPairActions.delete,
          child: Text(
            context.tr.pop_up_menu.delete,
            style: const TextStyle(color: Colors.red),
          ),
        )
    };
  }

  Future<void> executeAction(
    BuildContext context,
    BreedingPair breedingPair,
  ) async {
    return switch (this) {
      edit => await openSheet<void>(
          context,
          AddBreedingPairSheet(breedingPair: breedingPair),
        ),
      delete => {
          if (context.mounted)
            await DeleteDialog.show(
              context: context,
              title: context.tr.breeding_pairs.delete,
              onDelete: () => context
                  .read<BirdBreederCubit>()
                  .deleteBreedingPair(breedingPair),
            ),
        }
    };
  }
}

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
  int? get laid => _broods.laidCount;
  int? get hatched => _broods.hatchedCount;
  int? get fledged => _broods.fledgedCount;
  int? get died => _broods.diedCount;

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
                        const Icon(Icons.close),
                        _ParentLabel(
                          bird: mother,
                        ),
                      ],
                    ),
                  ),
                  _StatusChip(status: breedingPair.status),
                ],
              ),
              const Divider(),
              if (breedingPair.cageResolved?.name != null)
                Row(
                  children: [
                    const Icon(Icons.home_work_outlined, size: 16),
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
                        if (laid != null)
                          _Stat(
                            icon: Icons.egg_outlined,
                            label: context.tr.common.eggs_short,
                            value: laid!,
                          ),
                        if (hatched != null)
                          _Stat(
                            icon: Icons.cruelty_free_outlined,
                            label: context.tr.common.hatched_short,
                            value: hatched!,
                          ),
                        if (fledged != null)
                          _Stat(
                            icon: Icons.flight_takeoff,
                            label: context.tr.common.fledged_short,
                            value: fledged!,
                          ),
                        if (died != null)
                          _Stat(
                            icon: Icons.cancel_outlined,
                            label: context.tr.common.died_short,
                            value: died!,
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

  /// Popup menu with common actions.
  Widget _moreMenu(BuildContext context, BreedingPair breedingPair) {
    return PopupMenuButton<BreedingPairActions>(
      onSelected: (v) => v.executeAction(context, breedingPair),
      itemBuilder: (context) => BreedingPairActions.values.map((action) {
        switch (action) {
          case BreedingPairActions.edit:
            return BreedingPairActions.edit.getItem(context);
          case BreedingPairActions.delete:
            return BreedingPairActions.delete.getItem(context);
        }
      }).toList(),
      icon: const Icon(Icons.more_vert_rounded),
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

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.status});
  final BreedingPairStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: status.color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        status.getDisplayName(context),
        style: TextStyle(
          color: status.color,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
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
