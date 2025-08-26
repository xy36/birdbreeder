import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/constants.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_text_property_field.dart';

class FinalPriceField extends StatelessWidget {
  const FinalPriceField({
    super.key,
    required this.bird,
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
