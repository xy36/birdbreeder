import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/bird_date_property_field.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';

class BornAtDateField extends StatelessWidget {
  const BornAtDateField({
    required this.bird,
    super.key,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdDatePropertyField(
      bird: bird,
      label: context.tr.common.born_at,
      name: 'born_at_date_field',
      select: (b) => b.bornAt,
      apply: (b, v) => b.copyWith(bornAt: v),
    );
  }
}
