import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/colors/domain/repositories/i_color_repository.dart';
import 'package:birdbreeder/features/colors/presentation/bloc/colors_bloc.dart';
import 'package:birdbreeder/features/colors/presentation/colors_screen.dart';
import 'package:birdbreeder/services/injection.dart';

@RoutePage()
class ColorsPage extends StatelessWidget {
  const ColorsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ColorsBloc(s1.get<IBirdColorsRepository>())..add(const Load()),
      child: const ColorsScreen(),
    );
  }
}
