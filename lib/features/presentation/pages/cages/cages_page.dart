import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/presentation/pages/cages/bloc/cages_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/cages/cages_screen.dart';

@RoutePage()
class CagesPage extends StatelessWidget {
  const CagesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CagesBloc()..add(const Load()),
      child: const CagesScreen(),
    );
  }
}
