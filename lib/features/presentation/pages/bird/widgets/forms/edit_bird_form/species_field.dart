import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/domain/models/entities/bird.dart';
import 'package:birdbreeder/features/domain/models/entities/species.dart';
import 'package:birdbreeder/features/presentation/pages/bird/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/bird/models/bird_resources.dart';
import 'package:collection/collection.dart';
import 'package:easy_autocomplete/easy_autocomplete.dart';

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
    return EasyAutocomplete(
      initialValue: bird.species?.name,
      decoration: InputDecoration(
        labelText: context.l10n.common__species,
      ),
      suggestions: birdResources.speciesList
          .map(
            (e) => e.name ?? '-',
          )
          .toList(),
      onSubmitted: (value) {
        final species = birdResources.speciesList.firstWhereOrNull(
          (s) => s.name == value,
        );

        context.read<BirdBloc>().add(
              BirdEvent.change(bird: bird.copyWith(species: species)),
            );
      },
      onChanged: (value) {
        context.read<BirdBloc>().add(
              BirdEvent.change(
                bird: bird.copyWith(species: Species(name: value)),
              ),
            );
      },
    );
  }
}
