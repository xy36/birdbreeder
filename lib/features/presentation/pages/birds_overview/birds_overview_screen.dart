import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/domain/models/entities/bird.dart';
import 'package:birdbreeder/features/domain/models/enums/origin.dart';
import 'package:birdbreeder/features/domain/models/enums/sex.dart';
import 'package:birdbreeder/features/presentation/pages/birds_overview/bloc/birds_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/birds_overview/buttons/add_new_bird_button.dart';
import 'package:birdbreeder/features/presentation/shared/app_bar_with_drawer.dart';
import 'package:birdbreeder/routing/app_router.dart';
import 'package:birdbreeder/services/screen_size.dart';

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
            appBar: AppBarWithDrawer(title: context.l10n.birds__title),
            body: BlocBuilder<BirdsBloc, BirdsState>(
              builder: (context, state) {
                final birds = state.birds;

                return ListView.builder(
                  itemCount: birds.length,
                  itemBuilder: (context, index) {
                    final bird = birds[index];
                    return Card(
                      surfaceTintColor: state.selectedBird?.id == bird.id
                          ? Theme.of(context).focusColor
                          : Theme.of(context).primaryColorLight,
                      child: ListTile(
                        title: Text(
                          '${context.l10n.common__ringnumber}: ${bird.ringnumber ?? ''}',
                        ),
                        subtitle: Text(
                          bird.sex?.name(context) ?? Sex.unknown.name(context),
                        ),
                        onLongPress: () {
                          // open menu to select birds
                        },
                        onTap: () async {
                          await context.router.push(BirdRoute(bird: bird));

                          if (!mounted) return;

                          context
                              .read<BirdsBloc>()
                              .add(const BirdsEvent.load());

                          if (ScreenSize.isMobileOrTabletPortrait(
                            context,
                          )) {
                            //context.router.push(AddBirdRoute());

                            //context.router
                            //    .pushWidget(EditBirdPage(bird: bird));

                            return;
                          }
                        },
                      ),
                    );
                  },
                );
              },
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.endDocked,
            floatingActionButton: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AddNewBirdButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  int? roundUpAbsolute(double? number) {
    if (number != null) return number.round();
    return null;
  }

  Future<Bird> createRandomBird() async {
    final rnadomRingnumber =
        'ringnumber${DateTime.now().millisecondsSinceEpoch}';
    final randomBornDate =
        DateTime.now().subtract(const Duration(days: 365 * 2 + 30));
    final randomDiedDate =
        randomBornDate.add(const Duration(days: 365 * 2 + 30));

    return Bird(
      ringnumber: rnadomRingnumber,
      bornDate: randomBornDate,
      diedDate: randomDiedDate,
      boughtDate: randomBornDate,
      sellDate: randomDiedDate,
      boughtPrice: Random().nextInt(1000).toDouble(),
      sellPriceOffer: Random().nextInt(1000).toDouble(),
      cageId: 'cage${Random().nextInt(1000)}',
      color: null,
      fatherRingnumber: Random().nextInt(10000000).toString(),
      motherRingnumber: Random().nextInt(10000000).toString(),
      partnerRingnumber: Random().nextInt(10000000).toString(),
      sex: Random().nextBool() ? Sex.female : Sex.male,
      id: Random().nextInt(10000000).toString(),
      isForSale: Random().nextBool(),
      origin: Random().nextBool() ? Origin.bought : Origin.bred,
      species: null,
      sellPriceReal: Random().nextInt(1000).toDouble(),
    );
  }
}
