import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/repositories/i_birds_repository.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/birds_overview_screen.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/bloc/birds_bloc.dart';
import 'package:birdbreeder/services/injection.dart';

@RoutePage()
class BirdsOverviewPage extends StatelessWidget {
  const BirdsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          BirdsBloc(s1.get<IBirdsRepository>())..add(const BirdsEvent.load()),
      child: const BirdsOverviewScreen(),
    );
  }
}
