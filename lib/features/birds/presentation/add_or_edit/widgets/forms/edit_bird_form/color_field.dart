import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_resources.dart';
import 'package:collection/collection.dart';

class ColorField extends StatelessWidget {
  const ColorField({
    super.key,
    required this.bird,
    required this.birdResources,
  });

  final Bird bird;

  final BirdResources birdResources;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: birdResources.colorsList
          .map(
            (e) => DropdownMenuItem(
              value: e.name,
              child: Text(e.name ?? '-'),
            ),
          )
          .toList(),
      value: bird.color?.name,
      onChanged: (value) {
        final color = birdResources.colorsList.firstWhereOrNull(
          (color) => color.name == value,
        );

        context.read<BirdBloc>().add(
              BirdEvent.change(bird: bird.copyWith(color: color)),
            );
      },
      decoration: InputDecoration(
        labelText: context.l10n.common__color,
      ),
    );
    // return EasyAutocomplete(
    //   initialValue: bird.color?.name,
    //   decoration: InputDecoration(
    //     labelText: context.l10n.common__color,
    //   ),
    //   suggestions: birdResources.colorsList
    //       .map(
    //         (e) => e.name ?? '-',
    //       )
    //       .toList(),
    //   onSubmitted: (value) {
    //     final color = birdResources.colorsList.firstWhereOrNull(
    //       (color) => color.name == value,
    //     );

    //     context.read<BirdBloc>().add(
    //           BirdEvent.change(bird: bird.copyWith(color: color)),
    //         );
    //   },
    //   onChanged: (value) {
    //     context.read<BirdBloc>().add(
    //           BirdEvent.change(
    //             bird: bird.copyWith(
    //               color:
    //                   (bird.color ?? BirdColor.create()).copyWith(name: value),
    //             ),
    //           ),
    //         );
    //   },
    // );
  }
}
