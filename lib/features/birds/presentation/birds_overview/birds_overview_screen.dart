import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/birds_table.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/buttons/add_new_bird_button.dart';
import 'package:birdbreeder/features/birds/presentation/cubit/birds_cubit.dart';
import 'package:birdbreeder/shared/widgets/search_bar_widget.dart';

class BirdsOverviewScreen extends StatefulWidget {
  const BirdsOverviewScreen({super.key});

  @override
  State<BirdsOverviewScreen> createState() => _BirdsOverviewScreenState();
}

class _BirdsOverviewScreenState extends State<BirdsOverviewScreen> {
  String searchQuery = '';

  List<Bird> filteredBirds(List<Bird> birds) {
    if (searchQuery.isEmpty) return birds;

    return birds.where((bird) {
      final isRingNumberMatch =
          bird.ringnumber?.toLowerCase().contains(searchQuery.toLowerCase()) ??
              false;
      final isColorMatch =
          bird.color?.name?.toLowerCase().contains(searchQuery.toLowerCase()) ??
              false;
      final isSpeciesMatch = bird.species?.name
              ?.toLowerCase()
              .contains(searchQuery.toLowerCase()) ??
          false;

      final isCageMatch =
          bird.cage?.name?.toLowerCase().contains(searchQuery.toLowerCase()) ??
              false;

      return isRingNumberMatch || isColorMatch || isSpeciesMatch || isCageMatch;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Scaffold(
            appBar: SharedAppBarWithDrawer(
              title: context.l10n.birds__title,
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
            body: BlocBuilder<BirdsCubit, BirdsState>(
              builder: (context, state) => state.map(
                initial: (_) => const SharedLoadingWidget(),
                loading: (_) => const SharedLoadingWidget(),
                error: (_) => const SharedErrorWidget(),
                loaded: (state) =>
                    BirdsTable(birds: filteredBirds(state.birds)),
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: const AddNewBirdButton(),
          ),
        ),
      ],
    );
  }
}
