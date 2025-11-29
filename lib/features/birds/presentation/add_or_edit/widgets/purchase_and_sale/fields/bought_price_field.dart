import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/constants.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/bird_text_property_field.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';

class BoughtPriceField extends StatelessWidget {
  const BoughtPriceField({
    required this.bird,
    super.key,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdTextPropertyField(
      bird: bird,
      label: context.tr.common.bought.price,
      name: 'bought_price_field',
      apply: (b, v) => b.copyWith(boughtPrice: double.tryParse(v!)),
      select: (b) => b.boughtPrice?.toString(),
      suffixText: currencySymbol,
    );
  }
}
