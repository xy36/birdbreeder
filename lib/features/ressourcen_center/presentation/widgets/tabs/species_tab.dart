import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/species.dart';
import 'package:birdbreeder/features/ressourcen_center/presentation/widgets/resource_list.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

@RoutePage(name: 'SpeciesTabRoute')
class SpeciesTab extends StatelessWidget {
  const SpeciesTab({super.key});
  @override
  Widget build(BuildContext context) {
    return ResourceList<Species>(
      title: 'Species',
      items:
          context.watch<BirdBreederCubit>().state.birdBreederResources.species,
      onCreate: () => context.router.push(SpeciesDetailsRoute()),
      onDelete: (species) =>
          context.read<BirdBreederCubit>().deleteSpecies(species),
      onEdit: (s) =>
          context.router.push(SpeciesDetailsRoute(initialSpecies: s)),
    );
  }
}
