import 'package:birdbreeder/common_imports.dart';
import 'package:flutter/foundation.dart';

import '../menu/menu_screen.dart';

class AppBarWithDrawer extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWithDrawer({super.key, this.title, this.actions});

  final String? title;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) return SizedBox.shrink();
    return AppBar(
      title: Text(title ?? ''),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () async {
          Menu.toggleMenuDrawer();
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
