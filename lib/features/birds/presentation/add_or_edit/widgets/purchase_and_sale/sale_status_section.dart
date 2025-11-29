import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/purchase_and_sale/fields/sale_status_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/section_card.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/icons.dart';

class SaleStatusSection extends StatelessWidget {
  const SaleStatusSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: AppIcons.birdSectionSaleStatus,
      title: context.tr.bird.sections.status.title,
      subtitle: context.tr.bird.sections.status.sub_title,
      children: [
        SaleStatusField(bird: bird),
      ],
    );
  }
}
