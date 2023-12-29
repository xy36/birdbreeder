import 'package:birdbreeder/presentation/pages/bird/shared/fields/bought_date_field.dart';
import 'package:birdbreeder/presentation/pages/bird/shared/fields/died_date_field.dart';
import 'package:birdbreeder/presentation/pages/bird/shared/fields/mother_field.dart';
import 'package:birdbreeder/presentation/pages/bird/shared/fields/origin_field.dart';
import 'package:birdbreeder/presentation/pages/bird/shared/fields/sell_date_field.dart';
import 'package:birdbreeder/presentation/pages/bird/shared/fields/sex_field.dart';
import 'package:birdbreeder/presentation/pages/bird/widgets/app_bar_actions/cancel_button.dart';
import 'package:birdbreeder/presentation/pages/bird/widgets/app_bar_actions/delete_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bird_bloc.dart';
import '../shared/fields/born_date_field.dart';
import '../shared/fields/father_field.dart';
import '../shared/fields/ringnumber_field.dart';
import '../widgets/app_bar_actions/save_button.dart';

class EditBirdScreen extends StatelessWidget {
  EditBirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Bird'),
        actions: [
          BlocBuilder<BirdBloc, BirdState>(
            builder: (context, state) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SaveButton(),
                  DeleteButton(),
                  CancelButton(),
                ],
              );
            },
          )
        ],
      ),
      body: BlocBuilder<BirdBloc, BirdState>(
        builder: (context, state) {
          if (state.status == BirdStatus.loading) {
            return Center(child: CircularProgressIndicator());
          }
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
