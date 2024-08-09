import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/birds_overview_screen.dart';
import 'package:birdbreeder/features/birds/presentation/cubit/birds_cubit.dart';

@RoutePage()
class BirdsOverviewPage extends StatelessWidget {
  const BirdsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<BirdsCubit, BirdsState>(
      listener: (context, state) {
        if (state is BirdsLoaded) {
          // context.read<BirdsBloc>().add(const BirdsEvent.load());
        }
      },
      child: const BirdsOverviewScreen(),
    );
  }
}
