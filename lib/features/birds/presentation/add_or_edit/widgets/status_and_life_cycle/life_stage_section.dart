import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/status_and_life_cycle/fields/born_at_date_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/status_and_life_cycle/fields/died_at_date_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/status_and_life_cycle/fields/fledged_at_date_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/status_and_life_cycle/fields/hatched_at_date_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/status_and_life_cycle/fields/laid_at_date_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/status_and_life_cycle/fields/life_stage_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/status_and_life_cycle/fields/unknown_lifecycle_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/section_card.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/icons.dart';

class LifeStageSection extends StatelessWidget {
  const LifeStageSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: AppIcons.birdSectionLifeStage,
      title: context.tr.bird.sections.life.title,
      subtitle: context.tr.bird.sections.life.sub_title,
      children: [
        UnknownLifecycleField(bird: bird),
        AnimatedCrossFade(
          firstChild: Column(
            spacing: 12,
            children: [
              Text(
                context.tr.bird.sections.life.unknown_lifecycle_description,
                style: context.bodySmall,
              ),
              BornAtDateField(bird: bird),
            ],
          ),
          secondChild: Column(
            spacing: 12,
            children: [
              if (bird.lifeStage != null) LifeStageField(bird: bird),
              LaidAtDateField(bird: bird),
              HatchedAtDateField(bird: bird),
              FledgedAtDateField(bird: bird),
            ],
          ),
          crossFadeState: bird.unknownLifecycle == true
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 300),
        ),
        DiedAtDateField(bird: bird),
      ],
    );
  }
}
