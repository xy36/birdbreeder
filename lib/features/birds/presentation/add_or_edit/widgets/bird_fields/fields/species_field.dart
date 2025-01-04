import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_resources.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:birdbreeder/shared/widgets/bottom_dropdown_search.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class SpeciesField extends StatelessWidget {
  const SpeciesField({
    super.key,
    required this.bird,
    required this.birdResources,
  });

  final Bird bird;

  final BirdResources birdResources;

  bool filterFn(Species item, String filter) {
    return item.name?.toLowerCase().contains(filter.toLowerCase()) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return FieldWithLabel(
      label: context.l10n.common__species,
      child: BottomDropdownSearch<Species>(
        items: birdResources.speciesList,
        selectedItem: bird.species,
        onChanged: (species) {
          context.read<BirdCubit>().changeBird(
                bird.copyWith(species: species),
              );
        },
        itemAsString: (item) => item.name ?? '-',
        title: context.l10n.bird__species_dropdown_title,
        searchHintText: context.l10n.bird__species_dropdown_hint,
        showSearchBox: birdResources.speciesList.length > 2,
        filterFn: filterFn,
        onClear: () => context.read<BirdCubit>().changeBird(
              bird.copyWith(species: null),
            ),
      ),
    );
  }
}
