import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/general/fields/cage_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/general/fields/owner_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/section_card.dart';

class KeepingSection extends StatelessWidget {
  const KeepingSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: Icons.info_outline_rounded,
      title: context.tr.bird.sections.keeping.title,
      subtitle: context.tr.bird.sections.keeping.sub_title,
      children: [
        CageField(bird: bird),
        OwnerField(bird: bird),
      ],
    );
  }
}
