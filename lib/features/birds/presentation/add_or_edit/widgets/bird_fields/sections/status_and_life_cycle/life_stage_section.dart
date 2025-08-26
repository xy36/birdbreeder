import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/status_and_life_cycle/fields/died_at_date_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/status_and_life_cycle/fields/fledged_at_date_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/status_and_life_cycle/fields/hatched_at_date_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/status_and_life_cycle/fields/laid_at_date_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/status_and_life_cycle/fields/life_stage_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/section_card.dart';

class LifeStageSection extends StatelessWidget {
  const LifeStageSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: Icons.note_alt,
      title: context.tr.bird.sections.life.title,
      subtitle: context.tr.bird.sections.life.sub_title,
      children: [
        if (bird.lifeStage != null) LifeStageField(bird: bird),
        LaidAtDateField(bird: bird),
        HatchedAtDateField(bird: bird),
        FledgedAtDateField(bird: bird),
        DiedAtDateField(bird: bird),
      ],
    );
  }
}
