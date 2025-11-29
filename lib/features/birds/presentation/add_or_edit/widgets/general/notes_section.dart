import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/general/fields/notes_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/section_card.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/icons.dart';

class NotesSection extends StatelessWidget {
  const NotesSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: AppIcons.birdSectionNotes,
      title: context.tr.bird.sections.notes.title,
      subtitle: context.tr.bird.sections.notes.sub_title,
      children: [
        NotesField(bird: bird),
      ],
    );
  }
}
