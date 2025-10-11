import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/general/fields/ringnumber_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/general/fields/sex_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/section_card.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/picker/color_picker_field.dart';
import 'package:birdbreeder/shared/widgets/picker/species_picker_field.dart';

class IdentificationSection extends StatelessWidget {
  const IdentificationSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: AppIcons.birdSectionIdentification,
      title: context.tr.bird.sections.identification.title,
      subtitle: context.tr.bird.sections.identification.sub_title,
      children: [
        RingnumberField(bird: bird),
        SpeciesPickerField(
          initialValue: bird.speciesResolved,
          onChanged: (species) {
            context.read<BirdCubit>().changeBird(
                  bird.copyWith(speciesId: species?.id),
                );
          },
        ),
        ColorPickerField(
          initialValue: bird.colorResolved,
          onChanged: (color) {
            context.read<BirdCubit>().changeBird(
                  bird.copyWith(colorId: color?.id),
                );
          },
        ),
        SexField(bird: bird),
      ],
    );
  }
}
