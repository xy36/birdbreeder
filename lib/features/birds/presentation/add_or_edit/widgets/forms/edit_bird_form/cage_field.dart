import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_resources.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/shared/widgets/my_dropdown_search.dart';

class CageField extends StatelessWidget {
  const CageField({
    super.key,
    required this.bird,
    required this.birdResources,
  });

  final Bird bird;

  final BirdResources birdResources;

  bool filterFn(Cage item, String filter) {
    return item.name?.toLowerCase().contains(filter.toLowerCase()) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MyDropdownSearch<Cage>(
      items: birdResources.cagesList,
      selectedItem: bird.cage,
      onChanged: (cage) {
        context.read<BirdCubit>().changeBird(
              bird.copyWith(cage: cage),
            );
      },
      itemAsString: (item) => item.name ?? '-',
      title: context.l10n.bird__cage_dropdown_title,
      searchHintText: context.l10n.bird__cage_dropdown_hint,
      showSearchBox: birdResources.cagesList.length > 2,
      filterFn: filterFn,
    );
  }
}
