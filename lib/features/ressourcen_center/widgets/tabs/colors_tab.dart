import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/details_pages/color_details_sheet.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_list.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

@RoutePage(name: 'ColorsTabRoute')
class ColorsTab extends StatelessWidget {
  const ColorsTab({super.key});
  @override
  Widget build(BuildContext context) {
    return ResourceList<BirdColor>(
      title: 'Colors',
      items:
          context.watch<BirdBreederCubit>().state.birdBreederResources.colors,
      onCreate: () async => openSheet(context, const ColorDetailsSheet()),
      onEdit: (c) async => openSheet(
        context,
        ColorDetailsSheet(
          initialColor: c,
        ),
      ),
      onDelete: (color) => context.read<BirdBreederCubit>().deleteColor(color),
    );
  }
}
