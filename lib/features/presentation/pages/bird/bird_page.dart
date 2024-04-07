import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/domain/i_birds_repository.dart';
import 'package:birdbreeder/features/domain/i_cages_repository.dart';
import 'package:birdbreeder/features/domain/i_color_repository.dart';
import 'package:birdbreeder/features/domain/i_species_repository.dart';
import 'package:birdbreeder/features/domain/models/entities/bird.dart';
import 'package:birdbreeder/features/presentation/pages/bird/bird_screen.dart';
import 'package:birdbreeder/features/presentation/pages/bird/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/bird/bloc/listeners/bird_deleted_listener.dart';
import 'package:birdbreeder/features/presentation/pages/bird/bloc/listeners/bird_error_listener.dart';
import 'package:birdbreeder/injection.dart';

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
      create: (context) => BirdBloc(
        s1.get<ISpeciesRepository>(),
        s1.get<IBirdColorsRepository>(),
        s1.get<ICagesRepository>(),
        s1.get<IBirdsRepository>(),
        bird: bird,
      )..add(const BirdLoad()),
      child: MultiBlocListener(
        listeners: [
          BirdErrorListener(),
          BirdDeletedListener(),
        ],
        child: const BirdScreen(),
      ),
    );
  }
}
