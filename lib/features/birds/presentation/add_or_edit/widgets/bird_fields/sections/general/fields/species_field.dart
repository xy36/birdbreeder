import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_dropdown_property_field.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/species.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

class SpeciesField extends StatelessWidget {
  const SpeciesField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  bool filterFn(Species item, String filter) {
    return item.name?.toLowerCase().contains(filter.toLowerCase()) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final species =
        context.watch<BirdBreederCubit>().state.birdBreederResources.species;
    return BirdDropdownPropertyField<Species>(
      bird: bird,
      label: context.tr.common.species,
      name: 'species_field',
      select: (b) => b.speciesResolved,
      items: species,
      selectedItem: bird.speciesResolved,
      apply: (bird, value) {
        return bird.copyWith(speciesId: value?.id);
      },
      itemBuilder: (context, item, _) {
        return ListTile(
          title: Text(item.name ?? '-'),
          subtitle: Text(item.latName ?? '-'),
        );
      },
      itemAsString: (item) => item.name ?? '-',
      title: context.tr.bird.select_species_label,
      filterFn: filterFn,
      onClear: () => context.read<BirdCubit>().changeBird(
            bird.copyWith(speciesId: null),
          ),
      onAdd: (searchEntry) {
        context.read<BirdCubit>().addAndSelectSpecies(searchEntry);
        Navigator.of(context).pop();
      },
    );
  }
}
