import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/purchase_and_sale/fields/bought_at_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/purchase_and_sale/fields/bought_from_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/purchase_and_sale/fields/bought_price_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/section_card.dart';

class PurchaseSection extends StatelessWidget {
  const PurchaseSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: Icons.sell,
      title: context.l10n.bird__section_title_purchase,
      subtitle: context.l10n.bird__section_sub_title_purchase,
      children: [
        BoughtPriceField(bird: bird),
        BoughtAtField(bird: bird),
        BoughtFromField(bird: bird),
      ],
    );
  }
}
