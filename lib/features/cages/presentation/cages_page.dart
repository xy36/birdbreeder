import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/presentation/bloc/cages_bloc.dart';
import 'package:birdbreeder/features/cages/presentation/cages_screen.dart';
import 'package:birdbreeder/services/injection.dart';

@RoutePage()
class CagesPage extends StatelessWidget {
  const CagesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CagesBloc(s1())..add(const Load()),
      child: const CagesScreen(),
    );
  }
}
