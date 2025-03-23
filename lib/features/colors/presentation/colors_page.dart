import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/utils/flash_helper.dart';
import 'package:birdbreeder/features/colors/presentation/color/cubit/color_cubit.dart';
import 'package:birdbreeder/features/colors/presentation/color/cubit/color_cubit_event.dart';
import 'package:birdbreeder/features/colors/presentation/colors_screen.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

@RoutePage()
class ColorsPage extends StatelessWidget {
  const ColorsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<ColorCubit>(),
      child: BlocPresentationListener<ColorCubit, ColorCubitEvent>(
        listener: (context, event) {
          switch (event) {
            case ColorEventCreateFailed():
              context.showErrorBar<bool>(
                content: Text(context.l10n.snackbar__create_failed),
              );
              break;
            case ColorEventUpdateFailed():
              context.showErrorBar<bool>(
                content: Text(context.l10n.snackbar__update_failed),
              );
              break;
            case ColorEventDeleteFailed():
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
