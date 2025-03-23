import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/bottom_dropdown_search.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

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
    final cages =
        context.watch<BirdBreederCubit>().state.birdBreederResources.cages;

    return FieldWithLabel(
      label: context.l10n.common__cage,
      child: BottomDropdownSearch<Cage>(
        items: cages,
        selectedItem: bird.cageResolved,
        onChanged: (cage) => context.read<BirdCubit>().changeBird(
              bird.copyWith(cage: cage?.id),
            ),
        itemAsString: (item) => item.name ?? '-',
        title: context.l10n.bird__cage_dropdown_title,
        searchHintText: context.l10n.bird__cage_dropdown_hint,
        showSearchBox: cages.length > 2,
        filterFn: filterFn,
        onClear: () => context.read<BirdCubit>().changeBird(
              bird.copyWith(cage: null),
            ),
      ),
    );
  }
}
