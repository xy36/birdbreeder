import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/screen_size_extensions.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/colors/presentation/color/color_page.dart';
import 'package:birdbreeder/shared/widgets/screens/generic_ressource_screen.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class ColorsScreen extends StatefulWidget {
  const ColorsScreen({super.key});

  @override
  State<ColorsScreen> createState() => _ColorsScreenState();
}

class _ColorsScreenState extends State<ColorsScreen> {
  String searchQuery = '';

  Future<void> _onAddOrEditColor(
    BuildContext context,
    BirdColor? initialColor,
  ) async {
    if (context.isMobile) {
      await context.router.push(
        ColorRoute(initialColor: initialColor),
      );
    } else {
      await showChildAsDrawerDialog(
        context,
        ColorPage(
          initialColor: initialColor,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return RessourceScreen<BirdColor>(
      fn: (object, query) =>
          object.name!.toLowerCase().contains(query.toLowerCase()),
      itemBuilder: (color) {
        return Card(
          child: ListTile(
            title: Text(color.name ?? '-'),
          ),
        );
      },
      onAddOrEdit: _onAddOrEditColor,
      title: context.l10n.colors__title,
    );
  }
}
