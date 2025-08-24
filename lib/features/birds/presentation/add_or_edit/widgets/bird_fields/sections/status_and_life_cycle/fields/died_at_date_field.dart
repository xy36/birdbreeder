import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_date_property_field.dart';

class DiedAtDateField extends StatelessWidget {
  const DiedAtDateField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdDatePropertyField(
      bird: bird,
      label: context.l10n.common__died_date,
      name: 'died_at_date_field',
      hint: context.l10n.common__died_date,
      select: (b) => b.diedAt,
      apply: (b, v) => b.copyWith(diedAt: v),
    );
  }
}
