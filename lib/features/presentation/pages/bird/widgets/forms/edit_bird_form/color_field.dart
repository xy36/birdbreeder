import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/domain/models/entities/bird.dart';
import 'package:birdbreeder/features/domain/models/entities/bird_color.dart';
import 'package:birdbreeder/features/presentation/pages/bird/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/bird/models/bird_resources.dart';
import 'package:collection/collection.dart';
import 'package:easy_autocomplete/easy_autocomplete.dart';

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
    return EasyAutocomplete(
      initialValue: bird.color?.name,
      decoration: InputDecoration(
        labelText: context.l10n.common__color,
      ),
      suggestions: birdResources.colorsList
          .map(
            (e) => e.name ?? '-',
          )
          .toList(),
      onSubmitted: (value) {
        final color = birdResources.colorsList.firstWhereOrNull(
          (color) => color.name == value,
        );

        context.read<BirdBloc>().add(
              BirdEvent.change(bird: bird.copyWith(color: color)),
            );
      },
      onChanged: (value) {
        context.read<BirdBloc>().add(
              BirdEvent.change(
                bird: bird.copyWith(color: BirdColor(name: value)),
              ),
            );
      },
    );
  }
}
