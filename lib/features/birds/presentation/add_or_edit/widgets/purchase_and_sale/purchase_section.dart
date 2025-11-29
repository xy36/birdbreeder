import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/purchase_and_sale/fields/bought_at_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/purchase_and_sale/fields/bought_from_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/purchase_and_sale/fields/bought_price_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/section_card.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/icons.dart';

class PurchaseSection extends StatelessWidget {
  const PurchaseSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: AppIcons.birdSectionPurchase,
      title: context.tr.bird.sections.purchase.title,
      subtitle: context.tr.bird.sections.purchase.sub_title,
      children: [
        BoughtPriceField(bird: bird),
        BoughtAtField(bird: bird),
        BoughtFromField(bird: bird),
      ],
    );
  }
}
