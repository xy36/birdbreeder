import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/bird_color.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/generic_picker_field.dart';

class ColorPickerField extends StatelessWidget {
  const ColorPickerField({
    super.key,
    this.initialValue,
    this.enabled = true,
    this.onChanged,
  });

  final BirdColor? initialValue;
  final bool enabled;
  final void Function(BirdColor?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return GenericPickerField<BirdColor>(
      name: 'color_selector',
      values:
          context.watch<BirdBreederCubit>().state.birdBreederResources.colors,
      displayStringFor: (color) => color.name ?? '—',
      initialValue: initialValue,
      enabled: enabled,
      onChanged: onChanged,
      labelText: context.tr.colors.select,
      itemBuilder: (context, item, index) => ListTile(
        title: Text(item.name ?? '-'),
      ),
      filterFn: (item, filter) =>
          item.name?.toLowerCase().contains(filter.toLowerCase()) ?? false,
      title: context.tr.colors.select,
      onAdd: (String name) async {
        final newColor = await context
            .read<BirdBreederCubit>()
            .addColor(BirdColor.create(name: name));
        return newColor;
      },
    );
  }
}
