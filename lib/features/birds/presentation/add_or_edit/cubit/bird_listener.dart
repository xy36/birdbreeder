import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit_event.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

class BirdListener extends BlocPresentationListener<BirdCubit, BirdCubitEvent> {
  BirdListener({
    super.key,
    super.child,
  }) : super(
          listener: (context, event) {
            switch (event) {
              case BirdCubitEventDeleted():
                context.snackInfo(context.tr.bird.deleted);
                context.router.maybePop();
              case BirdCubitEventDuplicated():
                context.snackInfo(context.tr.bird.duplicate);
              case BirdCubitEventError():
                context.snackError(context.tr.common.something_went_wrong);
              case BirdCubitEventSaved():
                context.snackSuccess(context.tr.bird.saved);
                context.maybePop();
            }
          },
        );
}
