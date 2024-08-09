import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/menu/presentation/menu_screen.dart';
import 'package:flutter/foundation.dart';

class SharedAppBarWithDrawer extends StatelessWidget
    implements PreferredSizeWidget {
  const SharedAppBarWithDrawer({super.key, this.title, this.actions});

  final String? title;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) return const SizedBox.shrink();
    return AppBar(
      title: Text(title ?? ''),
      actions: actions,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () async {
          Menu.toggleMenuDrawer();
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
