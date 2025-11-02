import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair_status.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair_details/broods_tab/empty_brood.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair_details/models/pair_totals.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair_details/overview_tab/kpi_cards.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair_details/widgets/brood_card.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pairs/widgets/breeding_pair_card.dart';

class PairOverviewTab extends StatelessWidget {
  const PairOverviewTab({
    super.key,
    required this.pair,
    this.onChangeStatus,
  });

  final BreedingPair pair;
  final Future<void> Function(BreedingPairStatus status)? onChangeStatus;

  @override
  Widget build(BuildContext context) {
    final totals = PairTotals(
      eggs: pair.broodsResolved
          .map((brood) => brood.laidCount)
          .fold<int>(0, (a, b) => a + b),
      hatched: pair.broodsResolved
          .map((brood) => brood.hatchedCount)
          .fold<int>(0, (a, b) => a + b),
      fledged: pair.broodsResolved
          .map((brood) => brood.fledgedCount)
          .fold<int>(0, (a, b) => a + b),
    );

    final divider = [
      const SizedBox(height: 8),
      const Divider(),
      const SizedBox(height: 16),
    ];

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      children: [
        BreedingPairHeader(
          breedingPair: pair,
          showSubtitle: true,
        ),
        ...divider,
        Text(
          context.tr.brood.latest,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 12),
        if (pair.latestBrood != null) ...[
          BroodCard(
            brood: pair.latestBrood!,
            breedingPair: pair,
          ),
        ] else
          EmptyBrood(breedingPair: pair),
        ...divider,
        KpiCards(
          totals: totals,
          eta: pair.latestBrood?.start,
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
