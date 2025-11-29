import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/widgets/picker/parent_picker_field.dart';

enum ParentType { father, mother }

class ParentField extends StatelessWidget {
  const ParentField({
    required this.initialBird,
    required this.parentType,
    super.key,
  });

  final Bird initialBird;
  final ParentType parentType;

  Bird? get parentBird => switch (parentType) {
        ParentType.father => initialBird.fatherResolved,
        ParentType.mother => initialBird.motherResolved,
      };

  @override
  Widget build(BuildContext context) {
    Future<void> onChanged(Bird? bird) async {
      await context.read<BirdCubit>().changeBird(
            switch (parentType) {
              ParentType.father => initialBird.copyWith(fatherId: bird?.id),
              ParentType.mother => initialBird.copyWith(motherId: bird?.id),
            },
          );
    }

    return switch (parentType) {
      ParentType.father => ParentPickerField.father(
          initialValue: parentBird,
          onChanged: onChanged,
        ),
      ParentType.mother => ParentPickerField.mother(
          initialValue: parentBird,
          onChanged: onChanged,
        ),
    };
  }
}
