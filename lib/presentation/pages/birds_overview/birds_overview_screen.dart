import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/domain/i_repository.dart';
import 'package:birdbreeder/domain/models/entities/bird.dart';
import 'package:birdbreeder/domain/models/enums/origin.dart';
import 'package:birdbreeder/domain/models/enums/sex.dart';
import 'package:birdbreeder/injection.dart';
import 'package:birdbreeder/routing/app_router.dart';

import '../../shared/app_bar_with_drawer.dart';
import 'buttons/add_new_bird_button.dart';

class BirdsOverviewScreen extends StatelessWidget {
  BirdsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWithDrawer(title: context.l10n.birds__title),
        body: FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: snapshot.data?.asValue?.value
                        .map<Widget>((bird) => Card(
                              child: ListTile(
                                title: Text(bird.ringnumber ?? ''),
                                subtitle: Text(bird.species?.name ?? ''),
                                onTap: () => context.router
                                    .push(BirdRoute(id: bird.id!)),
                              ),
                            ))
                        .toList() ??
                    [],
              );
            } else {
              return Center(child: Text('Loading...'));
            }
          },
          future: s1.get<IRepository>().getBirds(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AddNewBirdButton(),
          ],
        ));
  }

  Future<Bird> createRandomBird() async {
    final rnadomRingnumber =
        'ringnumber${DateTime.now().millisecondsSinceEpoch}';
    final randomBornDate =
        DateTime.now().subtract(Duration(days: 365 * 2 + 30));
    final randomDiedDate = randomBornDate.add(Duration(days: 365 * 2 + 30));

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
