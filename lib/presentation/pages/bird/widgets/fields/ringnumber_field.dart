import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../bloc/bird_bloc.dart';

class RingnumberField extends StatelessWidget {
  const RingnumberField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: FormBuilderTextField(
            name: 'ringnumber_field',
            onChanged: (value) => context.read<BirdBloc>().add(
                  BirdEvent.changed(
                    bird: state.bird.copyWith(
                      ringnumber: value,
                    ),
                  ),
                ),
            decoration: InputDecoration(
              labelText: 'Ringnumber',
              hintText: 'Enter the ringnumber of the bird',
            ),
          ),
        );
      },
    );
  }
}
