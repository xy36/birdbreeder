import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/constants.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_text_property_field.dart';

class AskingPriceField extends StatelessWidget {
  const AskingPriceField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdTextPropertyField(
      bird: bird,
      name: 'sell_price_offer_field',
      label: context.tr.common.sell.price.asking,
      apply: (b, v) => b.copyWith(askingPrice: double.tryParse(v!)),
      select: (b) => b.askingPrice?.toString(),
      suffixText: currencySymbol,
    );
  }
}
