import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_text_property_field.dart';

class NotesField extends StatelessWidget {
  const NotesField({
    super.key,
    required this.bird,
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
