import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_date_property_field.dart';

class BornAtDateField extends StatelessWidget {
  const BornAtDateField({
    super.key,
    required this.bird,
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
