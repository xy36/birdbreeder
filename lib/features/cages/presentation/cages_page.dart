import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/utils/flash_helper.dart';
import 'package:birdbreeder/features/cages/presentation/cages_screen.dart';
import 'package:birdbreeder/features/cages/presentation/cubit/cages_cubit.dart';
import 'package:birdbreeder/features/cages/presentation/cubit/cages_cubit_event.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

@RoutePage()
class CagesPage extends StatelessWidget {
  const CagesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CagesCubit(s1())..load(),
      child: BlocPresentationListener<CagesCubit, CagesCubitEvent>(
        listener: (context, event) {
          switch (event) {
            case CagesEventCreateFailed():
              context.showErrorBar<bool>(
                content: Text(context.l10n.snackbar__create_failed),
              );
              break;
            case CagesEventUpdateFailed():
              context.showErrorBar<bool>(
                content: Text(context.l10n.snackbar__update_failed),
              );
              break;
            case CagesEventDeleteFailed():
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
