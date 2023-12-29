import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/domain/models/enums/sex.dart';
import 'package:birdbreeder/presentation/pages/bird/shared/fields/bird_dropdown_field.dart';

import '../../bloc/bird_bloc.dart';

class SexField extends StatelessWidget {
  const SexField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        return BirdDropdownField<Sex>(
          name: 'sex_field',
          label: context.l10n.common__sex,
          initialValue: state.bird.sex,
          onChanged: (value) => context.read<BirdBloc>().add(
                BirdEvent.changed(
                  bird: state.bird.copyWith(
                    sex: value,
                  ),
                ),
              ),
          items: Sex.values
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e.name(context)),
                  ))
              .toList(),
        );
      },
    );
  }
}
