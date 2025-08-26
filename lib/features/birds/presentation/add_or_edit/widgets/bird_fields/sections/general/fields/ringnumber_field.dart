import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_text_property_field.dart';

class RingnumberField extends StatelessWidget {
  const RingnumberField({super.key, required this.bird});
  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdTextPropertyField(
      bird: bird,
      label: context.tr.common.ringnumber,
      name: 'ring_number_field',
      select: (b) => b.ringNumber ?? '',
      apply: (b, v) => b.copyWith(ringNumber: v),
      maxLines: 1,
    );
  }
}
