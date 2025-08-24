import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/species_extension.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/breeding/fields/parent_field.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pairs/widgets/breeding_pair_parent_widget.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';
import 'package:birdbreeder/shared/widgets/buttons/generic_button.dart';

class BreedingPairsListItem extends StatelessWidget {
  const BreedingPairsListItem({super.key, required this.breedingPair});

  final BreedingPair breedingPair;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: BreedingPairParentWidget(
                    parentType: ParentType.father,
                    bird: breedingPair.fatherResolved,
                  ),
                ),
                Expanded(
                  child: BreedingPairParentWidget(
                    parentType: ParentType.mother,
                    bird: breedingPair.motherResolved,
                  ),
                ),
                GenericButton.icon(
                  actionButtonType: ActionButtonType.breedingPairEdit,
                  onTap: () async {
                    await context.router.push(
                      BreedingPairEditRoute(
                        initialBreedingPair: breedingPair,
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            if (breedingPair.latestBrood != null)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'Letzter Brutbeginn: ${breedingPair.latestBrood?.start?.toDateFormat(context) ?? '-'}',
                  style: context.bodyMedium?.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            const SizedBox(
              height: 4,
            ),
            Wrap(
              spacing: 8,
              children: [
                if (breedingPair.fatherResolved?.speciesResolved != null)
                  GenericChip(
                    label: breedingPair.fatherResolved!.speciesResolved!.name!,
                    type: ChipType.species,
                  ),
                if (breedingPair.fatherResolved?.cageResolved != null)
                  GenericChip(
                    label: breedingPair.fatherResolved!.cageResolved!.name!,
                    type: ChipType.cage,
                  ),
                if (breedingPair.fatherResolved?.colorResolved != null)
                  GenericChip(
                    label: breedingPair.fatherResolved!.colorResolved!.name!,
                    type: ChipType.color,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
