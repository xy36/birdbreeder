import 'package:birdbreeder/common_imports.dart';

import '../../bloc/bird_bloc.dart';
import 'bird_text_field.dart';

class MotherField extends StatelessWidget {
  const MotherField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        return BirdTextField(
          name: 'mother_field',
          label: context.l10n.common__mother_ringnumber,
          initialValue: state.bird.motherRingnumber,
          onChanged: (value) => context.read<BirdBloc>().add(
                BirdEvent.changed(
                  bird: state.bird.copyWith(
                    motherRingnumber: value,
                  ),
                ),
              ),
        );
      },
    );
  }
}
