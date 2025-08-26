import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_date_property_field.dart';

class BoughtAtField extends StatelessWidget {
  const BoughtAtField({
    super.key,
    required this.bird,
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
