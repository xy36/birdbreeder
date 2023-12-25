import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/domain/i_repository.dart';
import 'package:flutter/material.dart';

import '../../domain/models/entities/entities.dart';
import '../../injection.dart';
import '../../routing/app_router.dart';

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
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Container(
          width: 500,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BirdsButton(),
              FinancesButton(),
              BreedingButton(),
              AccountButton(),
              // ElevatedButton(
              //     onPressed: () {
              //       context.router.push(BirdsOverviewRoute());
              //     },
              //     child: Text('Overview')),
              // buildSpecies(),
              // FutureBuilder(
              //   builder: (context, snapshot) {
              //     if (snapshot.hasData) {
              //       return Column(
              //         children: snapshot.data?.asValue?.value
              //                 .map<Widget>((e) => Card(
              //                       child: ListTile(
              //                         title: Text(e.ringnumber ?? ''),
              //                         subtitle: Text(e.species?.name ?? ''),
              //                       ),
              //                     ))
              //                 .toList() ??
              //             [],
              //       );
              //     } else {
              //       return Text('Loading...');
              //     }
              //   },
              //   future: s1.get<IRepository>().getBirds(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class BirdsButton extends StatelessWidget {
  const BirdsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.router.push(BirdsOverviewRoute());
      },
      child: Text('Birds'),
    );
  }
}

class FinancesButton extends StatelessWidget {
  const FinancesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Finances'),
    );
  }
}

class AccountButton extends StatelessWidget {
  const AccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Account'),
    );
  }
}

class BreedingButton extends StatelessWidget {
  const BreedingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Breeding'),
    );
  }
}
