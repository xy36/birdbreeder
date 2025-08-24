import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/utils/flash_helper.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
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
                context.showInfoBar<Bird>(
                  content: Text(context.l10n.bird__deleted),
                );
                context.router.maybePop();
                break;
              case BirdCubitEventDuplicated():
                context.showInfoBar<Bird>(
                  content: Text(context.l10n.bird__duplicated),
                );
                break;
              case BirdCubitEventError():
                context.showErrorBar<bool>(
                  content: const Text('Something went wrong!'),
                );
                break;
              case BirdCubitEventSaved():
                context.showSuccessBar<bool>(
                  content: Text(context.l10n.bird__saved),
                );
                context.pop();
                break;
            }
          },
        );
}
