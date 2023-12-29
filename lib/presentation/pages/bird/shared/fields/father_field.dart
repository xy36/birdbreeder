import 'package:birdbreeder/common_imports.dart';

import '../../bloc/bird_bloc.dart';
import 'bird_text_field.dart';

class FatherField extends StatelessWidget {
  const FatherField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        return BirdTextField(
          name: 'father_field',
          label: context.l10n.common__father_ringnumber,
          initialValue: state.bird.fatherRingnumber,
          onChanged: (value) => context.read<BirdBloc>().add(
                BirdEvent.changed(
                  bird: state.bird.copyWith(
                    fatherRingnumber: value,
                  ),
                ),
              ),
        );
      },
    );
  }
}
