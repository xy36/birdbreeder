import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_dropdown_property_field.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

class SoldToField extends StatelessWidget {
  const SoldToField({
    super.key,
    required this.bird,
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
      label: context.tr.common.sold.to,
      name: 'sold_to_field',
      select: (b) => b.soldToResolved,
      apply: (b, v) => b.copyWith(soldToId: v?.id),
      items: contacts,
      selectedItem: bird.soldToResolved,
      itemAsString: (item) => item.name ?? '-',
      title: context.tr.bird.select_sold_to_label,
      filterFn: filterFn,
      onClear: () => context.read<BirdCubit>().changeBird(
            bird.copyWith(ownerId: null),
          ),
    );
  }
}
