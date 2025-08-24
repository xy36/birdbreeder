import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_dropdown_property_field.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/cage.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

class CageField extends StatelessWidget {
  const CageField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  bool filterFn(Cage item, String filter) {
    return item.name?.toLowerCase().contains(filter.toLowerCase()) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BirdCubit>();
    final cages =
        context.watch<BirdBreederCubit>().state.birdBreederResources.cages;

    return BirdDropdownPropertyField<Cage>(
      bird: bird,
      label: context.l10n.common__cage,
      name: 'cage_field',
      hint: context.l10n.common__cage,
      select: (b) => b.cageResolved,
      apply: (b, v) => b.copyWith(cageId: v?.id),
      title: context.l10n.bird__cage_dropdown_title,
      filterFn: filterFn,
      items: cages,
      itemAsString: (item) => item.name ?? '-',
      selectedItem: bird.cageResolved,
      onAdd: (searchEntry) {
        cubit.addAndSelectCage(searchEntry);
        Navigator.of(context).pop();
      },
      onClear: () => cubit.changeBird(
        bird.copyWith(cageId: null),
      ),
    );
  }
}
