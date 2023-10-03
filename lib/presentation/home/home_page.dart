import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/domain/i_repository.dart';
import 'package:birdbreeder/routing/app_router.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../domain/models/entities/entities.dart';
import '../../domain/models/enums/origin.dart';
import '../../domain/models/enums/sex.dart';
import '../../injection.dart';
import '../../services/authentication/i_authentication_service.dart';

Future<Bird> createRandomBird() async {
  final rnadomRingnumber = 'ringnumber${DateTime.now().millisecondsSinceEpoch}';
  final randomBornDate = DateTime.now().subtract(Duration(days: 365 * 2 + 30));
  final randomDiedDate = randomBornDate.add(Duration(days: 365 * 2 + 30));

  final db = s1.get<FirebaseFirestore>();
  final authUser =
      s1.get<IAuthenticationService>().currentUser().asValue?.value;

  // final ref = await db
  //     .collection('users')
  //     .doc('${authUser!.uid}')
  //     .collection('species').doc('FUAxOwydAT00RngKdWvv')
  //     .get();
  //     //final species = SpeciesDto.fromJson(ref.docs.first.data());species

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

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final speciesFiedlController = TextEditingController();

  Widget buildSpecies() {
    Widget createSpeciesWidget = ElevatedButton(
        onPressed: () async {
          s1.get<IRepository>().createSpecies(
              Species(id: null, name: speciesFiedlController.text));
        },
        child: Text('create species'));

    Widget speciesText = TextField(
      decoration: InputDecoration(
        hintText: 'Enter your species',
      ),
      controller: speciesFiedlController,
    );

    return Row(
      children: [Expanded(child: speciesText), createSpeciesWidget],
    );
  }

  Future<Widget> buildBirds() async {
    final birds = await s1.get<IRepository>().getBirds();
    final widgets = birds.asValue?.value
        .map<Widget>((e) => Card(
              child: ListTile(
                title: Text(e.ringnumber ?? ''),
                subtitle: Text(e.species?.name ?? ''),
              ),
            ))
        .toList();

    return Column(
      children: widgets ?? [],
    );
  } //eedfc458-5966-42b5-8505-ab8dd95aaf06

  @override
  Widget build(BuildContext context) {
    final db = s1.get<FirebaseFirestore>();
    final authUser =
        s1.get<IAuthenticationService>().currentUser().asValue?.value;
    db.clearPersistence();

    return Scaffold(
        appBar: AppBar(title: Text('Home Page')),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.router.push(BirdsOverviewRoute());
                },
                child: Text('Overview')),
            buildSpecies(),
            FutureBuilder(
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: snapshot.data?.asValue?.value
                            .map<Widget>((e) => Card(
                                  child: ListTile(
                                    title: Text(e.ringnumber ?? ''),
                                    subtitle: Text(e.species?.name ?? ''),
                                  ),
                                ))
                            .toList() ??
                        [],
                  );
                } else {
                  return Text('Loading...');
                }
              },
              future: s1.get<IRepository>().getBirds(),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              heroTag: 'btn1',
              onPressed: () async {
                s1.get<IRepository>().createBird(await createRandomBird());
              },
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              heroTag: 'btn2',
              onPressed: () {
                s1.get<IAuthenticationService>().signOut();
              },
              child: const Icon(Icons.logout),
            ),
          ],
        ));
  }
}
