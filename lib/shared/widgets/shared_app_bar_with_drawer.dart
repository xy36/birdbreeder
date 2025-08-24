import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/menu/presentation/menu_screen.dart';
import 'package:birdbreeder/features/menu/presentation/utils/utils.dart';

class SharedAppBarWithDrawer extends StatelessWidget
    implements PreferredSizeWidget {
  const SharedAppBarWithDrawer({
    super.key,
    this.title,
    this.actions,
    this.hideMenuButton = false,
    this.titleWidget,
    this.bottom,
  });

  final String? title;

  final Widget? titleWidget;

  final List<Widget>? actions;

  final bool hideMenuButton;

  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return showMenuAsDrawer(context)
        ? AppBar(
            title: titleWidget ?? Text(title ?? ''),
            actions: actions,
            bottom: bottom,
            leading: hideMenuButton
                ? null
                : IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () async {
                      Menu.toggleMenuDrawer();
                    },
                  ),
          )
        : AppBar(
            title: Text(title ?? ''),
            centerTitle: true,
            actions: actions,
            bottom: bottom,
          );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
