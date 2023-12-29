import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/presentation/pages/bird/shared/fields/bird_dropdown_field.dart';

import '../../../../../domain/models/enums/origin.dart';
import '../../bloc/bird_bloc.dart';

class OriginField extends StatelessWidget {
  const OriginField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        return BirdDropdownField<Origin>(
          name: 'origin_field',
          label: context.l10n.common__origin,
          initialValue: state.bird.origin,
          onChanged: (value) => context.read<BirdBloc>().add(
                BirdEvent.changed(
                  bird: state.bird.copyWith(
                    origin: value,
                  ),
                ),
              ),
          items: Origin.values
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
