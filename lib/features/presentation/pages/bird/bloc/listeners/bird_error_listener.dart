import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/presentation/pages/bird/bloc/bird_bloc.dart';
import 'package:flash/flash_helper.dart';

class BirdErrorListener extends BlocListener<BirdBloc, BirdState> {
  BirdErrorListener({
    super.key,
    super.child,
  }) : super(
          listenWhen: (previousState, state) =>
              previousState is! BirdError && state is BirdError,
          listener: (context, state) {
            context.showErrorBar(
              content: const Text('Something went wrong!'),
            );
          },
        );
}
