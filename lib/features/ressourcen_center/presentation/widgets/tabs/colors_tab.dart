import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/bird_color.dart';
import 'package:birdbreeder/features/ressourcen_center/presentation/widgets/resource_list.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

@RoutePage(name: 'ColorsTabRoute')
class ColorsTab extends StatelessWidget {
  const ColorsTab({super.key});
  @override
  Widget build(BuildContext context) {
    return ResourceList<BirdColor>(
      title: 'Colors',
      items:
          context.watch<BirdBreederCubit>().state.birdBreederResources.colors,
      onCreate: () => context.router.push(ColorDetailsRoute()),
      onDelete: (color) => context.read<BirdBreederCubit>().deleteColor(color),
      onEdit: (x) => context.router.push(ColorDetailsRoute(initialColor: x)),
    );
  }
}
