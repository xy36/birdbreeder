import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/presentation/pages/colors/bloc/colors_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/colors/colors_screen.dart';

@RoutePage()
class ColorsPage extends StatelessWidget {
  const ColorsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorsBloc()..add(const Load()),
      child: const ColorsScreen(),
    );
  }
}
