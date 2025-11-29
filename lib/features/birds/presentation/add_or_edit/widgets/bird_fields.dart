import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/breeding/children_section.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/breeding/parent_section.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/general/identification_section.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/general/keeping_section.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/general/notes_section.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/purchase_and_sale/purchase_section.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/purchase_and_sale/sale_section.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/purchase_and_sale/sale_status_section.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/status_and_life_cycle/life_stage_section.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/icons.dart';

enum BirdSections {
  general,
  statusAndLifeCycle,
  breeding,
  purchaseAndSale;

  String getDisplayName(BuildContext context) {
    switch (this) {
      case BirdSections.general:
        return context.tr.bird.tabs.general;
      case BirdSections.statusAndLifeCycle:
        return context.tr.bird.tabs.state_and_life;
      case BirdSections.breeding:
        return context.tr.bird.tabs.breeding;
      case BirdSections.purchaseAndSale:
        return context.tr.bird.tabs.purchase_and_sale;
    }
  }

  Widget getIcon() {
    return Icon(
      switch (this) {
        BirdSections.general => AppIcons.birdTabsGeneral,
        BirdSections.breeding => AppIcons.birdTabsBreeding,
        BirdSections.statusAndLifeCycle => AppIcons.birdTabsStatusAndLifeCycle,
        BirdSections.purchaseAndSale => AppIcons.birdTabsPurchaseAndSale,
      },
    );
  }

  List<Widget> getSectionWidgets(BuildContext context, Bird bird) {
    switch (this) {
      case BirdSections.general:
        return [
          IdentificationSection(bird),
          KeepingSection(bird),
          NotesSection(bird),
        ];
      case BirdSections.statusAndLifeCycle:
        return [
          LifeStageSection(bird),
          //TODO: comment in when implemented
          //HealthSection(bird),
        ];
      case BirdSections.breeding:
        return [
          ParentSection(bird),
          ChildrenSection(bird),
        ];
      case BirdSections.purchaseAndSale:
        return [
          SaleStatusSection(bird),
          PurchaseSection(bird),
          SaleSection(bird),
        ];
    }
  }
}

final formKey = GlobalKey<FormBuilderState>();

class BirdFields extends StatefulWidget {
  const BirdFields({required this.bird, super.key});

  final Bird bird;

  @override
  State<BirdFields> createState() => _BirdFieldsState();
}

class _BirdFieldsState extends State<BirdFields> with TickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: BirdSections.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: formKey,
      child: Column(
        children: [
          TabBar(
            indicatorPadding: const EdgeInsets.symmetric(vertical: 8),
            controller: controller,
            isScrollable: true,
            physics: const BouncingScrollPhysics(),
            tabAlignment: TabAlignment.center,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            tabs: BirdSections.values
                .map(
                  (tab) => Padding(
                    padding: const EdgeInsets.all(8),
                    child: Tab(
                      icon: tab.getIcon(),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          tab.getDisplayName(context),
                          style: context.bodySmall,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: BirdSections.values
                  .map(
                    (e) => SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics(),
                      ),
                      child: Column(
                        children: e.getSectionWidgets(context, widget.bird),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
