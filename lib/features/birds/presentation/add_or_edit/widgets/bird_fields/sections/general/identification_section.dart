import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/general/fields/color_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/general/fields/ringnumber_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/general/fields/sex_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/general/fields/species_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/section_card.dart';
import 'package:birdbreeder/shared/icons.dart';

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
        SpeciesField(bird: bird),
        ColorField(bird: bird),
        SexField(bird: bird),
      ],
    );
  }
}
