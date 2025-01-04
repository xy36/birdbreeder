import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/shared/widgets/bottom_dropdown_search.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class SexField extends StatelessWidget {
  const SexField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return FieldWithLabel(
      label: context.l10n.common__sex,
      child: BottomDropdownSearch<Sex>(
        title: 'Sex',
        searchHintText: 'Search',
        showSearchBox: false,
        itemAsString: (item) => item.getTranslatedName(context),
        selectedItem: bird.sex,
        onChanged: (sex) {
          context.read<BirdCubit>().changeBird(
                bird.copyWith(sex: sex ?? Sex.unknown),
              );
        },
        dropdownBuilder: (context, sex) =>
            (sex ?? Sex.unknown).getIcon(context),
        items: Sex.values,
        itemBuilder: (context, sex, _) => ListTile(
          title: Text(sex.getTranslatedName(context)),
          leading: sex.getIcon(context),
        ),
      ),
    );
  }
}
