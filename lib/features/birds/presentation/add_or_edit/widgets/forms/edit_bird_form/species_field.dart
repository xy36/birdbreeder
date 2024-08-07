import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_resources.dart';
import 'package:collection/collection.dart';

class SpeciesField extends StatelessWidget {
  const SpeciesField({
    super.key,
    required this.bird,
    required this.birdResources,
  });

  final Bird bird;

  final BirdResources birdResources;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: birdResources.speciesList
          .map(
            (e) => DropdownMenuItem(
              value: e.name,
              child: Text(e.name ?? '-'),
            ),
          )
          .toList(),
      value: bird.species?.name,
      onChanged: (value) {
        final species = birdResources.speciesList.firstWhereOrNull(
          (s) => s.name == value,
        );

        context.read<BirdBloc>().add(
              BirdEvent.change(bird: bird.copyWith(species: species)),
            );
      },
      decoration: InputDecoration(
        labelText: context.l10n.common__species,
      ),
    );

    // return EasyAutocomplete(
    //   initialValue: bird.species?.name,
    //   decoration: InputDecoration(
    //     labelText: context.l10n.common__species,
    //   ),
    //   suggestions: birdResources.speciesList
    //       .map(
    //         (e) => e.name ?? '-',
    //       )
    //       .toList(),
    //   onSubmitted: (value) {
    //     final species = birdResources.speciesList.firstWhereOrNull(
    //       (s) => s.name == value,
    //     );

    //     context.read<BirdBloc>().add(
    //           BirdEvent.change(bird: bird.copyWith(species: species)),
    //         );
    //   },
    //   onChanged: (value) {
    //     // context.read<BirdBloc>().add(
    //     //       BirdEvent.change(
    //     //         bird: bird.copyWith(
    //     //           species:
    //     //               (bird.species ?? Species.create()).copyWith(name: value),
    //     //         ),
    //     //       ),
    //     //     );
    //   },
    // );
  }
}
