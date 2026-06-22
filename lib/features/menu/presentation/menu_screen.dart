import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/features/backup/backup_reminder_dialog.dart';
import 'package:birdbreeder/features/menu/presentation/cubit/menu_cubit.dart';
import 'package:birdbreeder/features/menu/presentation/utils/utils.dart';
import 'package:birdbreeder/features/menu/presentation/widgets/drawer_widget.dart';
import 'package:birdbreeder/services/backup/backup_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  late Drawer drawer;
  bool _reminderChecked = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted || _reminderChecked) return;
      _reminderChecked = true;
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
          if (hasDrawer) Menu.closeMenuDrawer();
          context.router.replace(state.page.routeName);
        },
        child: BlocBuilder<MenuCubit, MenuState>(
          builder: (context, state) {
            const drawer = Drawer(
              child: DrawerWidget(),
            );

            return Scaffold(
              key: Menu._menuScaffoldKey,
              // drawerEdgeDragWidth: 500,
              drawer: hasDrawer ? drawer : null,
              //drawerEnableOpenDragGesture: hasDrawer,
              body: Row(
                children: [
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
