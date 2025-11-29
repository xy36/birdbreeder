import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/generic_picker_field.dart';

class CagePickerField extends StatelessWidget {
  const CagePickerField({
    super.key,
    this.initialValue,
    this.enabled = true,
    this.onChanged,
    this.validator,
  });

  final Cage? initialValue;
  final bool enabled;
  final void Function(Cage?)? onChanged;
  final String? Function(Cage?)? validator;

  @override
  Widget build(BuildContext context) {
    return GenericPickerField<Cage>(
      name: 'cage_selector',
      values:
          context.watch<BirdBreederCubit>().state.birdBreederResources.cages,
      displayStringFor: (cage) => cage.name ?? '—',
      initialValue: initialValue,
      enabled: enabled,
      onChanged: onChanged,
      validator: validator,
      labelText: context.tr.cages.select,
      itemBuilder: (context, item, index) => ListTile(
        title: Text(item.name ?? '-'),
      ),
      filterFn: (item, filter) =>
          item.name?.toLowerCase().contains(filter.toLowerCase()) ?? false,
      title: context.tr.cages.select,
      onAdd: (String name) async {
        final newCage = await context
            .read<BirdBreederCubit>()
            .addCage(Cage.create(name: name));
        return newCage;
      },
    );
  }
}
