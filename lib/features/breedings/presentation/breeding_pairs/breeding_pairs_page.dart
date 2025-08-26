import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pairs/widgets/breeding_pairs_list_item.dart';
import 'package:birdbreeder/shared/widgets/screens/generic_ressource_screen.dart';

@RoutePage()
class BreedingPairsPage extends StatefulWidget {
  const BreedingPairsPage({
    super.key,
  });

  @override
  State<BreedingPairsPage> createState() => _BreedingPairsPageState();
}

class _BreedingPairsPageState extends State<BreedingPairsPage> {
  String searchQuery = '';

  Future<void> _onItemTap(
    BuildContext context,
    BreedingPair breedingPair,
  ) async {
    await context.router.push(
      BreedingPairDetailsRoute(
        breedingPairId: breedingPair.id,
      ),
    );
  }

  Future<void> _onAdd(
    BuildContext context,
  ) async {
    await context.router.push(
      BreedingPairEditRoute(),
    );
  }

  bool _searchFilter(BreedingPair breedingPair, String query) {
    return breedingPair.fatherResolved!.ringNumber!
            .toLowerCase()
            .contains(query.toLowerCase()) ||
        breedingPair.motherResolved!.ringNumber!
            .toLowerCase()
            .contains(query.toLowerCase());
  }

  @override
  Widget build(BuildContext context) {
    return RessourceScreen<BreedingPair>(
      fn: _searchFilter,
      itemBuilder: (breedingPair) {
        return BreedingPairsListItem(
          breedingPair: breedingPair,
        );
      },
      onItemTap: _onItemTap,
      onAdd: _onAdd,
      title: context.tr.breedings.title,
    );
  }
}
