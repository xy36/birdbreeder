import 'package:birdbreeder/common_imports.dart';

import '../../shared/app_bar_with_drawer.dart';

class BreedingsScreen extends StatelessWidget {
  BreedingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithDrawer(title: context.l10n.breedings__title),
    );
  }
}
