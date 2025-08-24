import 'dart:math';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

class RandomBirdFab extends StatelessWidget {
  const RandomBirdFab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        final colors =
            context.read<BirdBreederCubit>().state.birdBreederResources.colors;

        final species =
            context.read<BirdBreederCubit>().state.birdBreederResources.species;

        final cages =
            context.read<BirdBreederCubit>().state.birdBreederResources.cages;

        final contacts = context
            .read<BirdBreederCubit>()
            .state
            .birdBreederResources
            .contacts;

        final born = DateTime.now().subtract(
          Duration(days: Random().nextInt(365 * 10)),
        );
        final updated = DateTime.now().subtract(
          Duration(days: Random().nextInt(365 * 10)),
        );
        final bought = DateTime.now().subtract(
          Duration(days: Random().nextInt(365 * 10)),
        );
        final randomColor = colors.isNotEmpty
            ? colors[Random().nextInt(
                colors.length,
              )]
                .id
            : null;

        final randomSpecies = species.isNotEmpty
            ? species[Random().nextInt(
                species.length,
              )]
                .id
            : null;

        final randomCage = cages.isNotEmpty
            ? cages[Random().nextInt(
                cages.length,
              )]
                .id
            : null;

        final randomRingnumber = Random().nextInt(9999999).toString();

        final sellPriceOffer = Random().nextInt(1000) + 1.0;
        final sellPriceReal = sellPriceOffer - Random().nextInt(100);

        // random generated notes
        final notes = List.generate(
          Random().nextInt(5) + 1,
          (index) => 'Note ${index + 1}: ${Random().nextInt(100)}',
        ).join('\n');

        //create a random bird
        final randomBird = Bird(
          id: '',
          ringNumber: randomRingnumber,
          sex: Sex.values[Random().nextInt(2)],
          speciesId: randomSpecies,
          colorId: randomColor,
          cageId: randomCage,
          createdAt: DateTime.now().subtract(
            Duration(days: Random().nextInt(365 * 10)),
          ),
          updatedAt: updated,
          boughtAt: bought,
          boughtPrice: Random().nextInt(1000) + 1.0,
          fledgedAt: born.add(
            Duration(days: Random().nextInt(30)),
          ),
          hatchedAt: born.add(
            Duration(days: Random().nextInt(10)),
          ),
          laidAt: born,
          saleStatus: SaleStatus.values[Random().nextInt(3)],
          finalPrice: sellPriceReal,
          askingPrice: sellPriceOffer,
          notes: notes,
        );

        context.read<BirdBreederCubit>().addBird(randomBird);
      },
      child: const Icon(Icons.add_alert_sharp),
    );
  }
}
