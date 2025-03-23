import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/screen_size_extensions.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/cages/presentation/cage/cage_page.dart';
import 'package:birdbreeder/shared/widgets/screens/generic_ressource_screen.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class CagesScreen extends StatefulWidget {
  const CagesScreen({super.key});

  @override
  State<CagesScreen> createState() => _CagesScreenState();
}

class _CagesScreenState extends State<CagesScreen> {
  String searchQuery = '';

  Future<void> _onAddOrEditCage(
    BuildContext context,
    Cage? initialCage,
  ) async {
    if (context.isMobile) {
      await context.router.push(
        CageRoute(initialCage: initialCage),
      );
    } else {
      await showChildAsDrawerDialog(
        context,
        CagePage(
          initialCage: initialCage,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return RessourceScreen<Cage>(
      fn: (object, query) =>
          object.name!.toLowerCase().contains(query.toLowerCase()),
      itemBuilder: (cage) => Card(
        child: ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(cage.name ?? '-'),
              Text('${cage.height}m x ${cage.width}m x ${cage.depth}m'),
            ],
          ),
          subtitle: Text(cage.description ?? ''),
        ),
      ),
      onAddOrEdit: _onAddOrEditCage,
      title: context.l10n.cages__title,
    );
  }
}
