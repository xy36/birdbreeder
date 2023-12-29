import 'package:birdbreeder/common_imports.dart';

import '../../bloc/bird_bloc.dart';
import 'bird_text_field.dart';

class RingnumberField extends StatelessWidget {
  const RingnumberField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        return BirdTextField(
          name: 'ringnumber_field',
          label: context.l10n.common__ringnumber,
          initialValue: state.bird.ringnumber,
          onChanged: (value) => context.read<BirdBloc>().add(
                BirdEvent.changed(
                  bird: state.bird.copyWith(
                    ringnumber: value,
                  ),
                ),
              ),
        );
      },
    );
  }
}
