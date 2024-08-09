import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/widgets/shared_app_bar_with_drawer.dart';

class BreedingsScreen extends StatelessWidget {
  const BreedingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBarWithDrawer(title: context.l10n.breedings__title),
    );
  }
}
