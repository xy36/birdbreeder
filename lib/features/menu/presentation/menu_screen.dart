import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/features/backup/backup_reminder_dialog.dart';
import 'package:birdbreeder/features/menu/presentation/cubit/menu_cubit.dart';
import 'package:birdbreeder/features/menu/presentation/utils/utils.dart';
import 'package:birdbreeder/features/menu/presentation/widgets/side_bar.dart';
import 'package:birdbreeder/models/routing/menu_pages.dart';
import 'package:birdbreeder/services/backup/backup_service.dart';
import 'package:birdbreeder/services/data_mode/data_mode.dart';
import 'package:birdbreeder/services/injection.dart';
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
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  late SidebarXController sidebarController;
  late Drawer drawer;
  bool _reminderChecked = false;

  @override
  void initState() {
    sidebarController = SidebarXController(
      selectedIndex: MenuPage.values.first.index,
      extended: true,
    );

    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted || _reminderChecked) return;
      _reminderChecked = true;
      if (!s1.isRegistered<DataMode>() ||
          s1.get<DataMode>() != DataMode.local) {
        return;
      }
      if (await BackupService.shouldShowReminder()) {
        if (!mounted) return;
        await showBackupReminderDialog(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final hasDrawer = showMenuAsDrawer(context);
    return SafeArea(
      child: BlocListener<MenuCubit, MenuState>(
        listener: (context, state) {
          sidebarController.selectIndex(state.page.index);
          if (hasDrawer) Menu.closeMenuDrawer();
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
              child: sideBar,
            );

            return Scaffold(
              key: Menu._menuScaffoldKey,
              // drawerEdgeDragWidth: 500,
              drawer: hasDrawer ? drawer : null,
              //drawerEnableOpenDragGesture: hasDrawer,
              body: Row(
                children: [
                  // if not web, show the sidebar in a drawer
                  if (!hasDrawer) sideBar,
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
