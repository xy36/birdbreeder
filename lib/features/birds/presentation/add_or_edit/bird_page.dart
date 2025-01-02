import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/utils/flash_helper.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bird_screen.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit_event.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

@RoutePage()
class BirdPage extends StatelessWidget {
  const BirdPage({
    super.key,
    required this.bird,
  });

  final Bird? bird;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BirdCubit(
        s1(),
        s1(),
        s1(),
        s1(),
        bird: bird,
      )..load(),
      child: BlocPresentationListener<BirdCubit, BirdCubitEvent>(
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
          }
        },
        child: const BirdScreen(),
      ),
    );
  }
}
