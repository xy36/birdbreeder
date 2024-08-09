import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/birds_table.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/buttons/add_new_bird_button.dart';
import 'package:birdbreeder/features/birds/presentation/cubit/birds_cubit.dart';

class BirdsOverviewScreen extends StatefulWidget {
  const BirdsOverviewScreen({super.key});

  @override
  State<BirdsOverviewScreen> createState() => _BirdsOverviewScreenState();
}

class _BirdsOverviewScreenState extends State<BirdsOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Scaffold(
            appBar: SharedAppBarWithDrawer(title: context.l10n.birds__title),
            body: BlocBuilder<BirdsCubit, BirdsState>(
              builder: (context, state) => state.map(
                initial: (_) => const SharedLoadingWidget(),
                loading: (_) => const SharedLoadingWidget(),
                error: (_) => const SharedErrorWidget(),
                loaded: (state) => BirdsTable(birds: state.birds),
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: const AddNewBirdButton(),
          ),
        ),
      ],
    );
  }

  int? roundUpAbsolute(double? number) {
    if (number != null) return number.round();
    return null;
  }
}
