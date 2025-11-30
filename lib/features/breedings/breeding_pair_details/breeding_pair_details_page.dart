import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/breedings/breeding_pair_details/broods_tab/add_brood_sheet.dart';
import 'package:birdbreeder/features/breedings/breeding_pair_details/broods_tab/pair_broods_tab.dart';
import 'package:birdbreeder/features/breedings/breeding_pair_details/overview_tab/pair_overview_tab.dart';
import 'package:birdbreeder/models/breeding/breeding_pair_actions.dart';
import 'package:birdbreeder/models/breeding/breeding_pair_details_tabs.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/bird_breeder_wrapper.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';
import 'package:collection/collection.dart';

@RoutePage()
class BreedingPairDetailsPage extends StatefulWidget {
  const BreedingPairDetailsPage({required this.breedingPairId, super.key});

  final String breedingPairId;

  @override
  State<BreedingPairDetailsPage> createState() =>
      _BreedingPairDetailsPageState();
}

class _BreedingPairDetailsPageState extends State<BreedingPairDetailsPage>
    with TickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: BreedingPairDetailsTabs.values.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final broods = context
        .watch<BirdBreederCubit>()
        .state
        .birdBreederResources
        .broods
        .where((b) => b.breedingPair == widget.breedingPairId)
        .toList();
    final breedingPair = context
        .watch<BirdBreederCubit>()
        .state
        .birdBreederResources
        .breedingPairs
        .firstWhereOrNull((p) => p.id == widget.breedingPairId);

    if (breedingPair == null) {
      return const SizedBox();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.tr.brood.overview,
        ),
        centerTitle: false,
        leading: const NavigateBackButton(
          discardDialogEnabled: false,
        ),
        actions: [
          BreedingPairActions.buildMenu(context, breedingPair),
        ],
      ),
      body: BirdBreederWrapper(
        child: Column(
          children: [
            TabBar(
              controller: controller,
              isScrollable: true,
              physics: const BouncingScrollPhysics(),
              tabAlignment: TabAlignment.center,
              tabs: BreedingPairDetailsTabs.values
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
                children: [
                  PairOverviewTab(
                    pair: breedingPair,
                  ),
                  PairBroodsTab(
                    broods: broods,
                    breedingPair: breedingPair,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: AppActionButton(
        actionButtonType: ActionButtonType.broodAdd,
        onPressed: () async {
          await openSheet<Brood>(
            context,
            AddBroodSheet(breedingPair: breedingPair),
          );
        },
        type: ButtonType.floatingActionButton,
      ),
    );
  }
}
