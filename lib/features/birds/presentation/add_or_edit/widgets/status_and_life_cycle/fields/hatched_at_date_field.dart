import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/bird_date_property_field.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';

class HatchedAtDateField extends StatelessWidget {
  const HatchedAtDateField({
    required this.bird,
    super.key,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdDatePropertyField(
      bird: bird,
      label: context.tr.common.hatched,
      name: 'hatched_at_date_field',
      apply: (b, v) => b.copyWith(hatchedAt: v),
      select: (b) => b.hatchedAt,
    );
  }
}
