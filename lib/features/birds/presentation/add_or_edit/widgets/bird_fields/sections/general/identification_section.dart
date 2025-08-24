import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/general/fields/color_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/general/fields/ringnumber_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/general/fields/sex_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/general/fields/species_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/section_card.dart';

class IdentificationSection extends StatelessWidget {
  const IdentificationSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: Icons.badge,
      title: context.l10n.bird__section_title_identification,
      subtitle: context.l10n.bird__section_sub_title_identification,
      children: [
        RingnumberField(bird: bird),
        SpeciesField(bird: bird),
        ColorField(bird: bird),
        SexField(bird: bird),
      ],
    );
  }
}
