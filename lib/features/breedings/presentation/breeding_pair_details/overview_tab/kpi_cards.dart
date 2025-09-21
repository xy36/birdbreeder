import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair_details/models/pair_totals.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair_details/overview_tab/kpi_card.dart';
import 'package:birdbreeder/shared/icons.dart';

class KpiCards extends StatelessWidget {
  const KpiCards({super.key, required this.totals, this.eta});
  final PairTotals totals;
  final DateTime? eta;

  @override
  Widget build(BuildContext context) {
    final grid = MediaQuery.sizeOf(context).width >= 600 ? 4 : 2;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GridView(
          shrinkWrap: true,
          primary: false,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: grid,
            mainAxisExtent: 84,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          children: [
            KpiCard(
              icon: AppIcons.egg,
              label: context.tr.brood.kpi.eggs,
              value: totals.eggs,
            ),
            KpiCard(
              icon: AppIcons.hatched,
              label: context.tr.brood.kpi.hatched,
              value: totals.hatched,
            ),
            KpiCard(
              icon: AppIcons.fledged,
              label: context.tr.brood.kpi.fledged,
              value: totals.fledged,
            ),
          ],
        ),
      ],
    );
  }
}
