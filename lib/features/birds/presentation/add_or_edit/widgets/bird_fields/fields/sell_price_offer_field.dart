import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/constants.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/field_templates/bird_text_field.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class SellPriceOfferField extends StatelessWidget {
  const SellPriceOfferField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return FieldWithLabel(
      label: context.l10n.common__sell_price_offer,
      child: BirdTextField(
        name: 'sell_price_offer_field',
        initialValue: bird.sellPriceOffer?.toString(),
        onChanged: (sellPriceOffer) {
          context.read<BirdCubit>().changeBird(
                bird.copyWith(
                  sellPriceOffer: double.tryParse(sellPriceOffer!),
                ),
              );
        },
        suffixText: currencySymbol,
      ),
    );
  }
}
