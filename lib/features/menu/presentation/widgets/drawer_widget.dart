import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/features/menu/presentation/cubit/menu_cubit.dart';
import 'package:birdbreeder/features/menu/presentation/widgets/drawer_menu_item.dart';
import 'package:birdbreeder/models/routing/menu_pages.dart';
import 'package:birdbreeder/shared/cubits/theme_cubit/theme_cubit.dart';
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
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: scheme.primary,
                            child: const Text(
                              'TT',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Test Tester',
                                style: context.bodyLarge
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Züchternummer XYZ',
                                style: context.bodySmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
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
                        'Hauptbereiche'.toUpperCase(),
                        style: context.labelMedium,
                      ),
                      ...[
                        MenuPage.birds,
                        MenuPage.contacts,
                        MenuPage.breedings,
                        MenuPage.finances,
                      ].map(
                        (page) => DrawerMenuItem(
                          selected: state.page == page,
                          page: page,
                        ),
                      ),
                      Text(
                        'Stammdaten'.toUpperCase(),
                        style: context.labelMedium,
                      ),
                      ...[
                        MenuPage.resources,
                      ].map(
                        (page) => DrawerMenuItem(
                          selected: state.page == page,
                          page: page,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: accentColor,
              height: 60,
              width: double.infinity,
              child: BlocBuilder<ThemeCubit, ThemeMode>(
                builder: (context, mode) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: switch (mode) {
                      ThemeMode.system => IconButton(
                          onPressed: () => context
                              .read<ThemeCubit>()
                              .setMode(ThemeMode.light),
                          icon: const Icon(AppIcons.systemMode),
                        ),
                      ThemeMode.light => IconButton(
                          onPressed: () => context
                              .read<ThemeCubit>()
                              .setMode(ThemeMode.dark),
                          icon: const Icon(AppIcons.lightMode),
                        ),
                      ThemeMode.dark => IconButton(
                          onPressed: () => context
                              .read<ThemeCubit>()
                              .setMode(ThemeMode.system),
                          icon: const Icon(AppIcons.darkMode),
                        ),
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
