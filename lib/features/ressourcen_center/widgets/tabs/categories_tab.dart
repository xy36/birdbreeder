import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_list.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/category_avatar.dart';

@RoutePage(name: 'CategoriesTabRoute')
class CategoriesTab extends StatelessWidget {
  const CategoriesTab({super.key});

  Widget _buildTile(BuildContext context, FinanceCategory cat) {
    final displayData = cat.kind.getDisplayData(context);

    return ListTile(
      leading: CategoryAvatar(
        cat: cat,
      ),
      title: Text(cat.name),
      subtitle: Text(displayData.label),
      trailing: const Icon(AppIcons.chevronRight),
      onTap: () =>
          context.router.push(CategoriesDetailsRoute(initialCategory: cat)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResourceList<FinanceCategory>(
      title: context.tr.finances.categories.title,
      itemBuilder: _buildTile,
      items: context
          .watch<BirdBreederCubit>()
          .state
          .birdBreederResources
          .financesCategories,
      onCreate: () => context.router.push(CategoriesDetailsRoute()),
      onDelete: (cat) =>
          context.read<BirdBreederCubit>().deleteFinancesCategory(cat),
      onEdit: (cat) => {},
    );
  }
}
