import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/core/extensions/extensions.dart';
import 'package:birdbreeder/features/menu/presentation/cubit/menu_cubit.dart';
import 'package:birdbreeder/features/menu/presentation/widgets/app_user_card.dart';
import 'package:birdbreeder/features/menu/presentation/widgets/drawer_menu_item.dart';
import 'package:birdbreeder/models/routing/menu_pages.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final accentColor = scheme.primaryContainer.withValues(alpha: 0.8);
    return BlocBuilder<MenuCubit, MenuState>(
      builder: (context, state) {
        List<Widget> buildDrawerMenuItem(List<MenuPage> pages) => pages
            .map(
              (page) => DrawerMenuItem(
                selected: state.page == page,
                page: page,
              ),
            )
            .toList();

        return Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              color: accentColor,
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(AppIcons.birdAvatar),
                      const SizedBox(width: 8),
                      Text(
                        'BirdBreeder',
                        style: context.headlineSmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  const AppUserCard(),
                  const SizedBox(height: 12),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      Text(
                        context.tr.menu.sections.main.toUpperCase(),
                        style: context.labelMedium,
                      ),
                      ...buildDrawerMenuItem([
                        MenuPage.birds,
                        MenuPage.contacts,
                        MenuPage.breedings,
                        MenuPage.finances,
                      ]),
                      Text(
                        context.tr.menu.sections.data.toUpperCase(),
                        style: context.labelMedium,
                      ),
                      ...buildDrawerMenuItem([
                        MenuPage.species,
                        MenuPage.cages,
                        MenuPage.colors,
                        MenuPage.financesCategories,
                      ]),
                      Text(
                        context.tr.menu.sections.settings.toUpperCase(),
                        style: context.labelMedium,
                      ),
                      ...buildDrawerMenuItem([
                        MenuPage.account,
                      ]),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
