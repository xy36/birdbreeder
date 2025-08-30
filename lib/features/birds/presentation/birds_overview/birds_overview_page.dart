import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/birds_overview_screen.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/cubit/birds_filter_cubit.dart';

@RoutePage()
class BirdsOverviewPage extends StatelessWidget {
  const BirdsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<BirdsFilterCubit>().reset();
    return const BirdsOverviewScreen();
  }
}
