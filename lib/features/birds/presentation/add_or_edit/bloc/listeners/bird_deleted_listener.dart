import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/utils/flash_helper.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bloc/bird_bloc.dart';
import 'package:birdbreeder/core/routing/app_router.dart';

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

            context.router
                .removeUntil((route) => route.name == BirdsOverviewRoute.name);
          },
        );
}
