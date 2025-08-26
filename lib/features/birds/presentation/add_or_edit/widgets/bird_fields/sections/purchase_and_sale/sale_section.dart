import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/purchase_and_sale/fields/asking_price_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/purchase_and_sale/fields/final_price_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/purchase_and_sale/fields/sold_at_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/purchase_and_sale/fields/sold_to_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/section_card.dart';

class SaleSection extends StatelessWidget {
  const SaleSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: Icons.attach_money_sharp,
      title: context.tr.bird.sections.sale.title,
      subtitle: context.tr.bird.sections.sale.sub_title,
      children: [
        AskingPriceField(bird: bird),
        FinalPriceField(bird: bird),
        SoldAtField(bird: bird),
        SoldToField(bird: bird),
      ],
    );
  }
}
