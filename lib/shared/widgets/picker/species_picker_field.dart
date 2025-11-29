import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/generic_picker_field.dart';

class SpeciesPickerField extends StatelessWidget {
  const SpeciesPickerField({
    super.key,
    this.initialValue,
    this.enabled = true,
    this.onChanged,
  });

  final Species? initialValue;
  final bool enabled;
  final void Function(Species?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return GenericPickerField<Species>(
      name: 'species_selector',
      values:
          context.watch<BirdBreederCubit>().state.birdBreederResources.species,
      displayStringFor: (species) => species.name ?? '—',
      initialValue: initialValue,
      enabled: enabled,
      onChanged: onChanged,
      labelText: context.tr.species.select,
      itemBuilder: (context, item, index) => ListTile(
        title: Text(item.name ?? '-'),
      ),
      filterFn: (item, filter) =>
          item.name?.toLowerCase().contains(filter.toLowerCase()) ?? false,
      title: context.tr.species.select,
      onAdd: (String name) async {
        final newSpecies = await context
            .read<BirdBreederCubit>()
            .addSpecies(Species.create(name: name));
        return newSpecies;
      },
    );
  }
}
