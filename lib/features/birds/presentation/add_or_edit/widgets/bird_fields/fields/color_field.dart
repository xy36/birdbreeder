import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_resources.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/shared/widgets/bottom_dropdown_search.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class ColorField extends StatelessWidget {
  const ColorField({
    super.key,
    required this.bird,
    required this.birdResources,
  });

  final Bird bird;

  final BirdResources birdResources;

  bool filterFn(BirdColor item, String filter) {
    return item.name?.toLowerCase().contains(filter.toLowerCase()) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return FieldWithLabel(
      label: context.l10n.common__color,
      child: BottomDropdownSearch<BirdColor>(
        items: birdResources.colorsList,
        selectedItem: bird.color,
        onChanged: (color) {
          context.read<BirdCubit>().changeBird(
                bird.copyWith(color: color),
              );
        },
        itemAsString: (item) => item.name ?? '-',
        title: context.l10n.bird__color_dropdown_title,
        searchHintText: context.l10n.bird__color_dropdown_hint,
        showSearchBox: birdResources.colorsList.length > 2,
        filterFn: filterFn,
        onClear: () => context.read<BirdCubit>().changeBird(
              bird.copyWith(color: null),
            ),
      ),
    );
  }
}
