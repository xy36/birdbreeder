import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/species/domain/repositories/i_species_repository.dart';
import 'package:birdbreeder/features/species/presentation/bloc/species_bloc.dart';
import 'package:birdbreeder/features/species/presentation/species_screen.dart';
import 'package:birdbreeder/services/injection.dart';

@RoutePage()
class SpeciesPage extends StatelessWidget {
  const SpeciesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SpeciesBloc(s1.get<ISpeciesRepository>())..add(const Load()),
      child: const SpeciesScreen(),
    );
  }
}
