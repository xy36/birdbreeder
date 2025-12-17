import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/ressources/entity/resource_tab.dart';
import 'package:birdbreeder/shared/widgets/bird_breeder_wrapper.dart';

@RoutePage()
class ResourcesCenterPage extends StatelessWidget {
  const ResourcesCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    // AutoTabsRouter maintains a TabController synced to nested routes.
    return AutoTabsRouter.tabBar(
      routes: ResourceTab.values.map((e) => e.route).toList(),
      builder: (context, child, controller) {
        return Scaffold(
          appBar: SharedAppBarWithDrawer(
            title: context.tr.resources.title,
          ),
          body: BirdBreederWrapper(
            child: Column(
              children: [
                TabBar(
                  controller: controller,
                  tabs: ResourceTab.values
                      .map((tab) => Tab(text: tab.getDisplayName(context)))
                      .toList(),
                ),
                Expanded(
                  child: TabBarView(
                    controller: controller,
                    children: ResourceTab.values.map((e) => e.child).toList(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
