import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/entities/bird.dart';
import 'package:birdbreeder/features/birds/domain/entities/origin.dart';
import 'package:birdbreeder/features/birds/domain/entities/sex.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/bloc/birds_bloc.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/buttons/add_new_bird_button.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/services/screen_size.dart';
import 'package:birdbreeder/shared/widgets/app_bar_with_drawer.dart';

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
                      color: Colors.white,
                      child: ListTile(
                        title: Text(
                          bird.ringnumber ?? '-',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: bird.sex?.icon(context) ??
                            Sex.unknown.icon(context),
                        subtitle: Wrap(
                          runSpacing: 10,
                          spacing: 10,
                          children: [
                            if (bird.origin != null)
                              Chip(
                                label: Text(
                                  bird.origin?.name(context) ??
                                      Origin.unknown.name(context),
                                ),
                              ),
                            if (bird.cage?.name != null)
                              Chip(
                                backgroundColor: Colors.amber[100],
                                side: const BorderSide(
                                  color: Colors.transparent,
                                ),
                                label: Text(
                                  bird.cage?.name ?? '',
                                ),
                              ),
                            if (bird.bornDate != null)
                              Chip(
                                label: Text(
                                  bird.bornDate!.toIso8601String(),
                                ),
                              ),
                            if (bird.species?.name != null)
                              Chip(
                                backgroundColor: Colors.blueAccent[100],
                                side: const BorderSide(
                                  color: Colors.transparent,
                                ),
                                label: Text(
                                  bird.species!.name!,
                                ),
                              ),
                            if (bird.color?.name != null)
                              Chip(
                                backgroundColor: Colors.greenAccent[100],
                                side: const BorderSide(
                                  color: Colors.transparent,
                                ),
                                label: Text(
                                  bird.color!.name!,
                                ),
                              ),
                          ],
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
      cage: null,
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
