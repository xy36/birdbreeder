import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/utils/flash_helper.dart';
import 'package:birdbreeder/features/colors/domain/repositories/i_color_repository.dart';
import 'package:birdbreeder/features/colors/presentation/colors_screen.dart';
import 'package:birdbreeder/features/colors/presentation/cubit/colors_cubit.dart';
import 'package:birdbreeder/features/colors/presentation/cubit/colors_cubit_event.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

@RoutePage()
class ColorsPage extends StatelessWidget {
  const ColorsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorsCubit(s1.get<IBirdColorsRepository>())..load(),
      child: BlocPresentationListener<ColorsCubit, ColorsCubitEvent>(
        listener: (context, event) {
          switch (event) {
            case ColorsEventCreateFailed():
              context.showErrorBar<bool>(
                content: Text(context.l10n.snackbar__create_failed),
              );
              break;
            case ColorsEventUpdateFailed():
              context.showErrorBar<bool>(
                content: Text(context.l10n.snackbar__update_failed),
              );
              break;
            case ColorsEventDeleteFailed():
              context.showErrorBar<bool>(
                content: Text(context.l10n.snackbar__delete_failed),
              );
              break;
          }
        },
        child: const ColorsScreen(),
      ),
    );
  }
}
