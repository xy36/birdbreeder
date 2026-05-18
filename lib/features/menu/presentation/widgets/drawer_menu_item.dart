import 'package:birdbreeder/features/menu/presentation/cubit/menu_cubit.dart';
import 'package:birdbreeder/models/routing/menu_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerMenuItem extends StatelessWidget {
  const DrawerMenuItem({required this.selected, required this.page, super.key});

  final MenuPage page;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<MenuCubit>().emitMenuState(page),
      borderRadius: BorderRadius.circular(999),
      child: Container(
        decoration: selected
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(999),
                color: selected
                    ? Theme.of(context).colorScheme.primaryContainer
                    : Theme.of(context).canvasColor,
              )
            : null,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              Icon(page.icon),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    page.getLabel(context),
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    page.getSubtitle(context),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
