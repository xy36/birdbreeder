import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/birds_table.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/buttons/add_new_bird_button.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/search_bar_widget.dart';

class BirdsOverviewScreen extends StatefulWidget {
  const BirdsOverviewScreen({super.key});

  @override
  State<BirdsOverviewScreen> createState() => _BirdsOverviewScreenState();
}

class _BirdsOverviewScreenState extends State<BirdsOverviewScreen> {
  String searchQuery = '';

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
            body: BlocBuilder<BirdBreederCubit, BirdBreederState>(
              builder: (context, state) => state.map(
                initial: (_) => const SharedLoadingWidget(),
                loading: (_) => const SharedLoadingWidget(),
                loaded: (state) => BirdsTable(
                  birds: state.birdBreederResources.birds
                      .where((bird) => bird.filter(searchQuery))
                      .toList(),
                ),
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.minimize_outlined),
                AddNewBirdButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
