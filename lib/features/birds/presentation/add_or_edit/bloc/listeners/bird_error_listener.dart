import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bloc/bird_bloc.dart';
import 'package:flash/flash_helper.dart';

class BirdErrorListener extends BlocListener<BirdBloc, BirdState> {
  BirdErrorListener({
    super.key,
    super.child,
  }) : super(
          listenWhen: (previousState, state) =>
              previousState is! BirdError && state is BirdError,
          listener: (context, state) {
            context.showErrorBar<bool>(
              content: const Text('Something went wrong!'),
            );
          },
        );
}
