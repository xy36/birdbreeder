import 'package:birdbreeder/common_imports.dart';

import '../../bloc/bird_bloc.dart';
import 'bird_date_field.dart';

class BoughtDateField extends StatelessWidget {
  const BoughtDateField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        return BirdDateField(
          name: 'bought_date_field',
          label: context.l10n.common__bought_date,
          initialValue: state.bird.boughtDate,
          onChanged: (value) => context.read<BirdBloc>().add(
                BirdEvent.changed(
                  bird: state.bird.copyWith(
                    boughtDate: value,
                  ),
                ),
              ),
        );
      },
    );
  }
}
