import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/presentation/cubit/cages_cubit.dart';
import 'package:birdbreeder/features/cages/presentation/widgets/buttons/add_new_age_button.dart';
import 'package:birdbreeder/features/cages/presentation/widgets/cage_item.dart';

class CagesScreen extends StatelessWidget {
  const CagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CagesCubit, CagesState>(
      buildWhen: (previous, current) => current.isNotListerner,
      builder: (context, state) {
        return Scaffold(
          appBar: SharedAppBarWithDrawer(
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
            errorScreen: () {
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
