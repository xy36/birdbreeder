import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair_details/broods_tab/add_brood_tile.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair_details/widgets/brood_card.dart';

class PairBroodsTab extends StatelessWidget {
  const PairBroodsTab({
    super.key,
    required this.breedingPair,
    required this.broods,
  });

  final BreedingPair breedingPair;
  final List<Brood> broods;

  @override
  Widget build(BuildContext context) {
    final list = broods
      ..sort((a, b) {
        final statusCompare = a.status.index.compareTo(b.status.index);
        if (statusCompare != 0) return statusCompare;
        if (a.start == null || b.start == null) return 0;
        return a.start!.compareTo(b.start!);
      });

    return Scaffold(
      body: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
        itemCount: list.length + 1,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (_, i) {
          if (i == list.length) {
            return AddBroodTile(breedingPair: breedingPair);
          }
          final brood = list[i];
          return BroodCard(
            brood: brood,
            breedingPair: breedingPair,
          );
        },
      ),
    );
  }
}
