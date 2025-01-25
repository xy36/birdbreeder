import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/utils/flash_helper.dart';
import 'package:birdbreeder/features/species/presentation/cubit/species_cubit.dart';
import 'package:birdbreeder/features/species/presentation/cubit/species_cubit_event.dart';
import 'package:birdbreeder/features/species/presentation/species_screen.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

@RoutePage()
class SpeciesPage extends StatelessWidget {
  const SpeciesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<SpeciesCubit>(),
      child: BlocPresentationListener<SpeciesCubit, SpeciesCubitEvent>(
        listener: (context, event) {
          switch (event) {
            case SpeciesEventCreateFailed():
              context.showErrorBar<bool>(
                content: Text(context.l10n.snackbar__create_failed),
              );
              break;
            case SpeciesEventUpdateFailed():
              context.showErrorBar<bool>(
                content: Text(context.l10n.snackbar__update_failed),
              );
              break;
            case SpeciesEventDeleteFailed():
              context.showErrorBar<bool>(
                content: Text(context.l10n.snackbar__delete_failed),
              );
              break;
          }
        },
        child: const SpeciesScreen(),
      ),
    );
  }
}
