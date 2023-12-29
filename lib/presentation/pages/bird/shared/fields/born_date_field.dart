import 'package:birdbreeder/common_imports.dart';

import '../../bloc/bird_bloc.dart';
import 'bird_date_field.dart';

class BornDateField extends StatelessWidget {
  const BornDateField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        return BirdDateField(
          name: 'born_date_field',
          label: context.l10n.common__born_date,
          initialValue: state.bird.bornDate,
          onChanged: (value) => context.read<BirdBloc>().add(
                BirdEvent.changed(
                  bird: state.bird.copyWith(
                    bornDate: value,
                  ),
                ),
              ),
        );
      },
    );
  }
}
