import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/cages/presentation/cubit/cages_cubit.dart';
import 'package:birdbreeder/features/cages/presentation/widgets/buttons/add_new_age_button.dart';
import 'package:birdbreeder/features/cages/presentation/widgets/cage_item.dart';
import 'package:birdbreeder/shared/widgets/search_bar_widget.dart';

class CagesScreen extends StatefulWidget {
  const CagesScreen({super.key});

  @override
  State<CagesScreen> createState() => _CagesScreenState();
}

class _CagesScreenState extends State<CagesScreen> {
  String searchQuery = '';

  List<Cage> filteredCages(List<Cage> cages) {
    return List<Cage>.from(
      cages.where((cage) {
        if (searchQuery.isEmpty) return true;
        return cage.name!.toLowerCase().contains(searchQuery.toLowerCase());
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CagesCubit, CagesState>(
      buildWhen: (previous, current) => current.isNotListerner,
      builder: (context, state) {
        return Scaffold(
          appBar: SharedAppBarWithDrawer(
            title: context.l10n.cages__title,
            actions: [
              SearchBarWidget(
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
              ),
            ],
          ),
          floatingActionButton: const AddNewCageButton(),
          body: state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (cages) {
              final searchedCages = filteredCages(cages);

              return ListView.builder(
                itemCount: searchedCages.length,
                itemBuilder: (context, index) {
                  final cage = searchedCages[index];

                  if (cage.name == null) return const SizedBox.shrink();
                  return CageItem(
                    cage: cage,
                  );
                },
              );
            },
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
