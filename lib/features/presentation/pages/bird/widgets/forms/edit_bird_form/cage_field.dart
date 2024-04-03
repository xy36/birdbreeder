import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/domain/models/entities/bird.dart';
import 'package:birdbreeder/features/domain/models/entities/cage.dart';
import 'package:birdbreeder/features/presentation/pages/bird/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/bird/models/bird_resources.dart';
import 'package:collection/collection.dart';
import 'package:easy_autocomplete/easy_autocomplete.dart';

class CageField extends StatelessWidget {
  const CageField({
    super.key,
    required this.bird,
    required this.birdResources,
  });

  final Bird bird;

  final BirdResources birdResources;

  @override
  Widget build(BuildContext context) {
    return EasyAutocomplete(
      initialValue: bird.cage?.name,
      decoration: InputDecoration(
        labelText: context.l10n.common__cage,
      ),
      suggestions: birdResources.cagesList
          .map(
            (e) => e.name ?? '-',
          )
          .toList(),
      onSubmitted: (value) {
        final cage = birdResources.cagesList.firstWhereOrNull(
          (cage) => cage.name == value,
        );

        context.read<BirdBloc>().add(
              BirdEvent.change(bird: bird.copyWith(cage: cage)),
            );
      },
      onChanged: (value) {
        context.read<BirdBloc>().add(
              BirdEvent.change(
                bird: bird.copyWith(cage: Cage(name: value)),
              ),
            );
      },
    );
  }
}
