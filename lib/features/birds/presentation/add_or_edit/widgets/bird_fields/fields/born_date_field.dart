import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/field_templates/bird_date_field.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class BornDateField extends StatelessWidget {
  const BornDateField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return FieldWithLabel(
      label: context.l10n.common__born_date,
      child: BirdDateField(
        name: 'born_date_field',
        initialValue: bird.born,
        onChanged: (bornDate) {
          context.read<BirdCubit>().changeBird(bird.copyWith(born: bornDate));
        },
      ),
    );
  }
}
