import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/utils/flash_helper.dart';
import 'package:birdbreeder/features/cages/presentation/cage/cubit/cage_cubit.dart';
import 'package:birdbreeder/features/cages/presentation/cage/cubit/cage_cubit_event.dart';
import 'package:birdbreeder/features/cages/presentation/cages/cages_screen.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

@RoutePage()
class CagesPage extends StatelessWidget {
  const CagesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<CageCubit>(),
      child: BlocPresentationListener<CageCubit, CageCubitEvent>(
        listener: (context, event) {
          switch (event) {
            case CageEventCreateFailed():
              context.showErrorBar<bool>(
                content: Text(context.l10n.snackbar__create_failed),
              );
              break;
            case CageEventUpdateFailed():
              context.showErrorBar<bool>(
                content: Text(context.l10n.snackbar__update_failed),
              );
              break;
            case CageEventDeleteFailed():
              context.showErrorBar<bool>(
                content: Text(context.l10n.snackbar__delete_failed),
              );
              break;
          }
        },
        child: const CagesScreen(),
      ),
    );
  }
}
