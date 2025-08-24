import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_dropdown_property_field.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/bird_color.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

class ColorField extends StatelessWidget {
  const ColorField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  bool filterFn(BirdColor item, String filter) {
    return item.name?.toLowerCase().contains(filter.toLowerCase()) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BirdCubit>();

    final colors =
        context.watch<BirdBreederCubit>().state.birdBreederResources.colors;

    return BirdDropdownPropertyField<BirdColor>(
      bird: bird,
      label: context.l10n.common__color,
      name: 'color_field',
      select: (b) => b.colorResolved,
      hint: context.l10n.common__color,
      items: colors,
      selectedItem: bird.colorResolved,
      apply: (b, v) => b.copyWith(colorId: v?.id),
      itemAsString: (item) => item.name ?? '-',
      title: context.l10n.bird__color_dropdown_title,
      filterFn: filterFn,
      onClear: () => cubit.changeBird(
        bird.copyWith(colorId: null),
      ),
      onAdd: (searchEntry) {
        cubit.addAndSelectColor(searchEntry);
        Navigator.of(context).pop();
      },
    );
  }
}
