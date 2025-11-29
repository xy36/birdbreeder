import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/section_card.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/picker/cage_picker_field.dart';
import 'package:birdbreeder/shared/widgets/picker/contact_picker_field.dart';

class KeepingSection extends StatelessWidget {
  const KeepingSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: AppIcons.birdSectionKeeping,
      title: context.tr.bird.sections.keeping.title,
      subtitle: context.tr.bird.sections.keeping.sub_title,
      children: [
        CagePickerField(
          initialValue: bird.cageResolved,
          onChanged: (cage) {
            context.read<BirdCubit>().changeBird(
                  bird.copyWith(cageId: cage?.id),
                );
          },
        ),
        ContactPickerField(
          initialValue: bird.ownerResolved,
          onChanged: (contact) {
            context.read<BirdCubit>().changeBird(
                  bird.copyWith(ownerId: contact?.id),
                );
          },
        ),
      ],
    );
  }
}
