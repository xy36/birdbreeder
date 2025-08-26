import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/constants.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_text_property_field.dart';

class BoughtPriceField extends StatelessWidget {
  const BoughtPriceField({
    super.key,
    required this.bird,
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
