import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/bird_date_property_field.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';

class BoughtAtField extends StatelessWidget {
  const BoughtAtField({
    required this.bird,
    super.key,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdDatePropertyField(
      label: context.tr.common.bought.at,
      bird: bird,
      name: 'bought_at_field',
      apply: (b, v) => b.copyWith(boughtAt: v),
      select: (b) => b.boughtAt,
    );
  }
}
