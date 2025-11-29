import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/breeding/fields/parent_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/section_card.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/icons.dart';

class ParentSection extends StatelessWidget {
  const ParentSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: AppIcons.birdSectionParent,
      title: context.tr.bird.sections.parent.title,
      subtitle: context.tr.bird.sections.parent.sub_title,
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
