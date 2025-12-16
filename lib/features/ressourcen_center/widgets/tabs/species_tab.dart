import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/details_pages/species_details_sheet.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_list.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

@RoutePage(name: 'SpeciesTabRoute')
class SpeciesTab extends StatelessWidget {
  const SpeciesTab({super.key});
  @override
  Widget build(BuildContext context) {
    return ResourceList<Species>(
      title: 'Species',
      items:
          context.watch<BirdBreederCubit>().state.birdBreederResources.species,
      onCreate: () async => openSheet(context, const SpeciesDetailsSheet()),
      onEdit: (s) async =>
          openSheet(context, SpeciesDetailsSheet(initialSpecies: s)),
      onDelete: (species) =>
          context.read<BirdBreederCubit>().deleteSpecies(species),
    );
  }
}
