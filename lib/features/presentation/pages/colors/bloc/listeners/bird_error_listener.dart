import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/presentation/pages/colors/bloc/colors_bloc.dart';
import 'package:flash/flash_helper.dart';

class ColorsErrorListener extends BlocListener<ColorsBloc, ColorsState> {
  ColorsErrorListener({
    super.key,
    super.child,
  }) : super(
          listenWhen: (previousState, state) =>
              previousState is! Error && state is Error,
          listener: (context, state) {
            context.showErrorBar(
              content: const Text('Something went wrong!'),
            );
          },
        );
}
