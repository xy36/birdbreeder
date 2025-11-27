import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_dropdown_property_field.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

class BoughtFromField extends StatelessWidget {
  const BoughtFromField({
    required this.bird,
    super.key,
  });

  final Bird bird;

  bool filterFn(Contact item, String filter) {
    return item.name?.toLowerCase().contains(filter.toLowerCase()) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final contacts =
        context.watch<BirdBreederCubit>().state.birdBreederResources.contacts;

    return BirdDropdownPropertyField<Contact>(
      bird: bird,
      label: context.tr.common.bought.from,
      name: 'bought_from_field',
      select: (b) => b.boughtFromResolved,
      apply: (b, v) => b.copyWith(boughtFromId: v?.id),
      title: context.tr.bird.select_bought_from_label,
      filterFn: filterFn,
      compareFn: (a, b) => a.id == b.id,
      items: contacts,
      itemAsString: (item) => item.name ?? '-',
      selectedItem: bird.boughtFromResolved,
      onClear: () => context.read<BirdCubit>().changeBird(
            bird.copyWith(boughtFromId: null),
          ),
    );
  }
}
