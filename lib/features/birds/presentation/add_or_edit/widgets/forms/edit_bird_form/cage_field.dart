import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_resources.dart';
import 'package:collection/collection.dart';

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
    return DropdownButtonFormField(
      items: birdResources.cagesList
          .map(
            (e) => DropdownMenuItem(
              value: e.name,
              child: Text(e.name ?? '-'),
            ),
          )
          .toList(),
      value: bird.cage?.name,
      onChanged: (value) {
        final cage = birdResources.cagesList.firstWhereOrNull(
          (c) => c.name == value,
        );

        context.read<BirdBloc>().add(
              BirdEvent.change(bird: bird.copyWith(cage: cage)),
            );
      },
      decoration: InputDecoration(
        labelText: context.l10n.common__cage,
      ),
    );
    return const SizedBox();
    // return EasyAutocomplete(
    //   initialValue: bird.cage?.name,
    //   decoration: InputDecoration(
    //     labelText: context.l10n.common__cage,
    //   ),
    //   suggestions: birdResources.cagesList
    //       .map(
    //         (e) => e.name ?? '-',
    //       )
    //       .toList(),
    //   onSubmitted: (value) {
    //     final cage = birdResources.cagesList.firstWhereOrNull(
    //       (cage) => cage.name == value,
    //     );

    //     context.read<BirdBloc>().add(
    //           BirdEvent.change(bird: bird.copyWith(cage: cage)),
    //         );
    //   },
    //   onChanged: (value) {
    //     context.read<BirdBloc>().add(
    //           BirdEvent.change(
    //             bird: bird.copyWith(cage: Cage(name: value)),
    //           ),
    //         );
    //   },
    // );
  }
}
