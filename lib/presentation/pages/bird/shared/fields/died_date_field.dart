import 'package:birdbreeder/common_imports.dart';

import '../../bloc/bird_bloc.dart';
import 'bird_date_field.dart';

class DiedDateField extends StatelessWidget {
  const DiedDateField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        return BirdDateField(
          name: 'died_date_field',
          label: context.l10n.common__died_date,
          initialValue: state.bird.diedDate,
          onChanged: (value) => context.read<BirdBloc>().add(
                BirdEvent.changed(
                  bird: state.bird.copyWith(
                    diedDate: value,
                  ),
                ),
              ),
        );
      },
    );
  }
}
