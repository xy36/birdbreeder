import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/details_pages/cage_details_sheet.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_list.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

@RoutePage(name: 'CagesTabRoute')
class CagesTab extends StatelessWidget {
  const CagesTab({super.key});
  @override
  Widget build(BuildContext context) {
    return ResourceList<Cage>(
      title: 'Cages',
      items: context.watch<BirdBreederCubit>().state.birdBreederResources.cages,
      onCreate: () async => openSheet(context, const CageDetailsSheet()),
      onDelete: (cage) => context.read<BirdBreederCubit>().deleteCage(cage),
      onEdit: (c) async => openSheet(context, CageDetailsSheet(initialCage: c)),
    );
  }
}
