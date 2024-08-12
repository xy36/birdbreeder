import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_resources.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
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
        hintText: context.l10n.common__cage,
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
                bird: bird.copyWith(cage: Cage.create().copyWith(name: value)),
              ),
            );
      },
    );
  }
}
