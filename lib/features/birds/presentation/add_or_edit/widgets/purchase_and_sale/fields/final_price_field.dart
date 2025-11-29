import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/constants.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/bird_text_property_field.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';

class FinalPriceField extends StatelessWidget {
  const FinalPriceField({
    required this.bird,
    super.key,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdTextPropertyField(
      bird: bird,
      label: context.tr.common.sell.price.kFinal,
      name: 'final_price_field',
      apply: (b, v) => b.copyWith(finalPrice: double.tryParse(v!)),
      select: (b) => b.finalPrice?.toString(),
      suffixText: currencySymbol,
    );
  }
}
