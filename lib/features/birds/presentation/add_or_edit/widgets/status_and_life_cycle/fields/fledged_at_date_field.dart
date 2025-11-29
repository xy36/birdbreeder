import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/bird_date_property_field.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';

class FledgedAtDateField extends StatelessWidget {
  const FledgedAtDateField({
    required this.bird,
    super.key,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdDatePropertyField(
      label: context.tr.common.fledged,
      bird: bird,
      name: 'fledged_at_date_field',
      apply: (b, v) => b.copyWith(fledgedAt: v),
      select: (b) => b.fledgedAt,
    );
  }
}
