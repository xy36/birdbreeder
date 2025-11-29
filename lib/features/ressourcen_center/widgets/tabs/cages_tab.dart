import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_list.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

@RoutePage(name: 'CagesTabRoute')
class CagesTab extends StatelessWidget {
  const CagesTab({super.key});
  @override
  Widget build(BuildContext context) {
    return ResourceList<Cage>(
      title: 'Cages',
      items: context.watch<BirdBreederCubit>().state.birdBreederResources.cages,
      onCreate: () => context.router.push(CageDetailsRoute()),
      onDelete: (cage) => context.read<BirdBreederCubit>().deleteCage(cage),
      onEdit: (c) => context.router.push(CageDetailsRoute(initialCage: c)),
    );
  }
}
