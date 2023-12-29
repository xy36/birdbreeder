import 'package:birdbreeder/presentation/pages/bird/shared/fields/bought_date_field.dart';
import 'package:birdbreeder/presentation/pages/bird/shared/fields/died_date_field.dart';
import 'package:birdbreeder/presentation/pages/bird/shared/fields/mother_field.dart';
import 'package:birdbreeder/presentation/pages/bird/shared/fields/origin_field.dart';
import 'package:birdbreeder/presentation/pages/bird/shared/fields/sell_date_field.dart';
import 'package:birdbreeder/presentation/pages/bird/shared/fields/sex_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bird_bloc.dart';
import '../shared/fields/born_date_field.dart';
import '../shared/fields/father_field.dart';
import '../shared/fields/ringnumber_field.dart';

class AddBirdScreen extends StatelessWidget {
  AddBirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<BirdBloc, BirdState>(
          builder: (context, state) {
            return Text(state.bird.ringnumber ?? '');
          },
        ),
      ),
      body: BlocBuilder<BirdBloc, BirdState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                RingnumberField(),
                SexField(),
                OriginField(),
                BornDateField(),
                BoughtDateField(),
                SellDateField(),
                DiedDateField(),
                MotherField(),
                FatherField(),
              ],
            ),
          );
        },
      ),
    );
  }
}
