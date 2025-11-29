import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/bird_text_property_field.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';

class RingnumberField extends StatelessWidget {
  const RingnumberField({required this.bird, super.key});
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
