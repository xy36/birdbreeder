import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/purchase_and_sale/fields/sale_status_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/section_card.dart';

class SaleStatusSection extends StatelessWidget {
  const SaleStatusSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: Icons.insights,
      title: context.l10n.bird__section_title_status,
      subtitle: context.l10n.bird__section_sub_title_status,
      children: [
        SaleStatusField(bird: bird),
      ],
    );
  }
}
