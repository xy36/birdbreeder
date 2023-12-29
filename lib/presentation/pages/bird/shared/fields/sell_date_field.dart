import 'package:birdbreeder/common_imports.dart';

import '../../bloc/bird_bloc.dart';
import 'bird_date_field.dart';

class SellDateField extends StatelessWidget {
  const SellDateField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        return BirdDateField(
          name: 'sell_date_field',
          label: context.l10n.common__sell_date,
          initialValue: state.bird.sellDate,
          onChanged: (value) => context.read<BirdBloc>().add(
                BirdEvent.changed(
                  bird: state.bird.copyWith(
                    sellDate: value,
                  ),
                ),
              ),
        );
      },
    );
  }
}
