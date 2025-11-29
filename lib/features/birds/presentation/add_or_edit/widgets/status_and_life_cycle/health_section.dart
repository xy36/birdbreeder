import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/section_card.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/icons.dart';

class HealthSection extends StatelessWidget {
  const HealthSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: AppIcons.birdSectionHealth,
      title: context.tr.bird.sections.health.title,
      subtitle: context.tr.bird.sections.health.sub_title,
      children: const [
        // Add health-related fields here
      ],
    );
  }
}
