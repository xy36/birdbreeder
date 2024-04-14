import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/features/menu/domain/entities/menu_pages.dart';
import 'package:birdbreeder/features/menu/presentation/cubit/menu_cubit.dart';
import 'package:birdbreeder/features/menu/presentation/widgets/side_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sidebarx/sidebarx.dart';

class Menu {
  static final GlobalKey<ScaffoldState> _menuScaffoldKey =
      GlobalKey<ScaffoldState>();

  static void openMenuDrawer() {
    _menuScaffoldKey.currentState?.openDrawer();
  }

  static void closeMenuDrawer() {
    _menuScaffoldKey.currentState?.closeDrawer();
  }

  static bool isMenuDrawerOpen() {
    return _menuScaffoldKey.currentState?.isDrawerOpen ?? false;
  }

  static void toggleMenuDrawer() {
    if (isMenuDrawerOpen()) {
      closeMenuDrawer();
    } else {
      openMenuDrawer();
    }
  }
}

class MenuScreen extends StatefulWidget {
  const MenuScreen({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  late SidebarXController sidebarController;
  late Drawer drawer;

  @override
  void initState() {
    sidebarController = SidebarXController(
      selectedIndex: MenuPage.values.first.index,
      extended: true,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocListener<MenuCubit, MenuState>(
        listener: (context, state) {
          sidebarController.selectIndex(state.page.index);
          Menu.closeMenuDrawer();
          context.router.replace(state.page.routeName);
        },
        child: BlocBuilder<MenuCubit, MenuState>(
          builder: (context, state) {
            final sideBar = SideBar(
              controller: sidebarController,
              onTap: (page) {
                context.read<MenuCubit>().emitMenuState(page);
              },
              showToggleButton: kIsWeb,
            );

            final drawer = Drawer(
              shape: const RoundedRectangleBorder(),
              child: sideBar,
            );

            return Scaffold(
              key: Menu._menuScaffoldKey,
              drawerEdgeDragWidth: 500,
              drawer: kIsWeb ? null : drawer,
              drawerEnableOpenDragGesture: kIsWeb ? false : true,
              body: Row(
                children: [
                  // if not web, show the sidebar in a drawer
                  if (kIsWeb) sideBar,
                  Expanded(
                    child: widget.child,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
