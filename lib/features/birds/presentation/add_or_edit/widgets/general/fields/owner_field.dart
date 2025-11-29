import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/bird_dropdown_property_field.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

class OwnerField extends StatelessWidget {
  const OwnerField({
    required this.bird,
    super.key,
  });

  final Bird bird;

  bool filterFn(Contact item, String filter) {
    return item.name?.toLowerCase().contains(filter.toLowerCase()) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BirdCubit>();
    final contacts =
        context.watch<BirdBreederCubit>().state.birdBreederResources.contacts;

    return BirdDropdownPropertyField<Contact>(
      bird: bird,
      label: context.tr.common.owner,
      name: 'owner_field',
      select: (b) => b.ownerResolved,
      apply: (b, v) => b.copyWith(ownerId: v?.id),
      title: context.tr.bird.select_owner_label,
      filterFn: filterFn,
      compareFn: (a, b) => a.id == b.id,
      items: contacts,
      itemAsString: (item) => item.name ?? '-',
      selectedItem: bird.ownerResolved,
      onClear: () => cubit.changeBird(
        bird.copyWith(ownerId: null),
      ),
    );
  }
}
