import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/general/fields/notes_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/section_card.dart';

class NotesSection extends StatelessWidget {
  const NotesSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: Icons.note_alt,
      title: context.l10n.bird__section_title_notes,
      subtitle: context.l10n.bird__section_sub_title_notes,
      children: [
        NotesField(bird: bird),
      ],
    );
  }
}
