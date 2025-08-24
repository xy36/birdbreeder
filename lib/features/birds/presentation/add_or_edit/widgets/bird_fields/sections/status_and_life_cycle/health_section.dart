import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/section_card.dart';

class HealthSection extends StatelessWidget {
  const HealthSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: Icons.health_and_safety_rounded,
      title: context.l10n.bird__section_title_health,
      subtitle: context.l10n.bird__section_sub_title_health,
      children: const [
        // Add health-related fields here
      ],
    );
  }
}
