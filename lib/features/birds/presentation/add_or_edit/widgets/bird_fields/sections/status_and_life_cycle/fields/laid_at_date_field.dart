import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_date_property_field.dart';

class LaidAtDateField extends StatelessWidget {
  const LaidAtDateField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdDatePropertyField(
      bird: bird,
      label: context.tr.common.laid,
      name: 'laid_at_date_field',
      apply: (b, v) => b.copyWith(laidAt: v),
      select: (b) => b.laidAt,
    );
  }
}
