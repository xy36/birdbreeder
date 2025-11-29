import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bird_screen.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_listener.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/services/injection.dart';

@RoutePage()
class BirdPage extends StatelessWidget {
  const BirdPage({
    required this.bird,
    super.key,
  });

  final Bird? bird;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BirdCubit(
        s1(),
        initialBird: bird,
      ),
      child: BirdListener(
        child: const BirdScreen(),
      ),
    );
  }
}
