import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/breeding/fields/parent_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/section_card.dart';

class ParentSection extends StatelessWidget {
  const ParentSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: Icons.family_restroom,
      title: context.l10n.bird__section_title_parent,
      subtitle: context.l10n.bird__section_sub_title_parent,
      children: [
        ParentField(
          initialBird: bird,
          parentType: ParentType.father,
        ),
        ParentField(
          initialBird: bird,
          parentType: ParentType.mother,
        ),
      ],
    );
  }
}
