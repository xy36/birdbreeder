import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/section_card.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/picker/contact_picker_field.dart';

class BreederSection extends StatelessWidget {
  const BreederSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: AppIcons.birdSectionBreeder,
      title: context.tr.bird.sections.breeder.title,
      subtitle: context.tr.bird.sections.breeder.sub_title,
      children: [
        ContactPickerField(
          initialValue: bird.breederResolved,
          labelText: context.tr.bird.sections.breeder.title,
          onChanged: (contact) async {
            await context.read<BirdCubit>().changeBird(
                  bird.copyWith(breederId: contact?.id),
                );
          },
        ),
      ],
    );
  }
}
