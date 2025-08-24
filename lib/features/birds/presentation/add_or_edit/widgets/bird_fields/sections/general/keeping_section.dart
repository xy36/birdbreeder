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
      title: context.l10n.bird__section_title_keeping,
      subtitle: context.l10n.bird__section_sub_title_keeping,
      children: [
        CageField(bird: bird),
        OwnerField(bird: bird),
      ],
    );
  }
}
