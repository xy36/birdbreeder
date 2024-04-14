import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/species/presentation/bloc/species_bloc.dart';
import 'package:birdbreeder/features/species/presentation/species_screen.dart';

@RoutePage()
class SpeciesPage extends StatelessWidget {
  const SpeciesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SpeciesBloc()..add(const Load()),
      child: const SpeciesScreen(),
    );
  }
}
