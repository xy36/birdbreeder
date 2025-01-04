import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/field_templates/bird_text_field.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class RingnumberField extends StatelessWidget {
  const RingnumberField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return FieldWithLabel(
      label: context.l10n.common__ringnumber,
      child: BirdTextField(
        name: 'ringnumber_field',
        hint: context.l10n.common__ringnumber,
        initialValue: bird.ringnumber,
        onChanged: (ringnumber) {
          context.read<BirdCubit>().changeBird(
                bird.copyWith(ringnumber: ringnumber),
              );
        },
      ),
    );
  }
}
