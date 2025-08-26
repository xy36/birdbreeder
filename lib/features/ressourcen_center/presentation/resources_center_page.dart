import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/ressourcen_center/presentation/models/resource_tab.dart';

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
            actions: [
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  final tab = ResourceTab.values[controller.index];

                  switch (tab) {
                    case ResourceTab.species:
                      context.router.push(SpeciesDetailsRoute());
                    case ResourceTab.cages:
                      context.router.push(CageDetailsRoute());
                    case ResourceTab.colors:
                      context.router.push(ColorDetailsRoute());
                  }
                },
              ),
            ],
          ),
          body: Column(
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
        );
      },
    );
  }
}
