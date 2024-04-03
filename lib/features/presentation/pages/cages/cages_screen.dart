import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/presentation/pages/cages/bloc/cages_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/cages/widgets/buttons/add_new_age_button.dart';
import 'package:birdbreeder/features/presentation/pages/cages/widgets/cage_item.dart';
import 'package:birdbreeder/features/presentation/shared/app_bar_with_drawer.dart';

class CagesScreen extends StatelessWidget {
  const CagesScreen({super.key});

  //TODO: fix error handling
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CagesBloc, CagesState>(
      buildWhen: (previous, current) => current.isNotListerner,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBarWithDrawer(
            title: context.l10n.cages__title,
          ),
          floatingActionButton: const AddNewCageButton(),
          body: state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (cages) => ListView.builder(
              itemCount: cages.length,
              itemBuilder: (context, index) {
                final cage = cages[index];

                if (cage.name == null) return const SizedBox.shrink();
                return CageItem(
                  cage: cage,
                );
              },
            ),
            error: () {
              return Center(
                child: Text(context.l10n.common__something_went_wrong),
              );
            },
          ),
        );
      },
    );
  }
}
