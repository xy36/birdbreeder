import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/bird_text_property_field.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';

class NotesField extends StatelessWidget {
  const NotesField({
    required this.bird,
    super.key,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdTextPropertyField(
      bird: bird,
      name: 'notes_field',
      label: context.tr.common.notes,
      apply: (bird, value) => bird.copyWith(notes: value),
      select: (b) => b.notes ?? '',
      minLines: 4,
      maxLines: 10,
    );
  }
}
