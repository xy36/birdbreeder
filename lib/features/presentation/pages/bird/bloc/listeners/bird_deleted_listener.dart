import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/domain/models/entities/bird.dart';
import 'package:birdbreeder/features/presentation/pages/bird/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/presentation/shared/utils/flash_helper.dart';

class BirdDeletedListener extends BlocListener<BirdBloc, BirdState> {
  BirdDeletedListener({
    super.key,
    super.child,
  }) : super(
          listenWhen: (previousState, state) =>
              previousState is! BirdDeleted && state is BirdDeleted,
          listener: (context, state) {
            context.showInfoBar<Bird>(
              content: Text(context.l10n.bird__deleted),
            );

            context.router.pop();
          },
        );
}
