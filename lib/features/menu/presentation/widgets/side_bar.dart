import 'package:birdbreeder/features/menu/domain/entities/menu_pages.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

const defaultMenuClosedWidth = 56.0;
const defaultMenuOpenedWidth = 350.0;

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
    required this.controller,
    required this.onTap,
    required this.showToggleButton,
  });

  /// The controller for the sidebar.
  final SidebarXController controller;

  /// Called when a menu item is tapped.
  final void Function(MenuPage page) onTap;

  /// Whether to show the toggle button to extend the sidebar.
  final bool showToggleButton;

  SidebarXTheme _getSidebarTheme(
    BuildContext context, {
    required bool extended,
  }) {
    const itemMargin = EdgeInsets.symmetric(horizontal: 8, vertical: 2);
    const itemDecoration = BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(6),
      ),
    );

    final baseTheme = SidebarXTheme(
      textStyle: Theme.of(context).textTheme.bodyLarge,
      selectedTextStyle: Theme.of(context).textTheme.titleLarge,
      itemMargin: itemMargin,
      selectedItemMargin: itemMargin,
      selectedItemDecoration: itemDecoration.copyWith(
        color: Theme.of(context).highlightColor,
      ),
      itemDecoration: itemDecoration,
      itemPadding: const EdgeInsets.all(14),
      itemTextPadding: const EdgeInsets.only(
        left: 14,
        top: 4,
      ),
      selectedItemPadding: const EdgeInsets.all(14),
      selectedItemTextPadding: const EdgeInsets.only(
        left: 14,
      ),
    );

    return baseTheme.copyWith(
      width: extended ? defaultMenuOpenedWidth : baseTheme.width,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: controller,
      headerBuilder: (context, extended) => _Header(
        extended: extended,
      ),
      headerDivider: const SizedBox(height: 16),
      showToggleButton: showToggleButton,
      animationDuration: Duration.zero,
      extendedTheme: _getSidebarTheme(context, extended: true),
      theme: _getSidebarTheme(context, extended: false),
      items: _buildSidebarItems(context),
    );
  }

  List<SidebarXItem> _buildSidebarItems(BuildContext context) =>
      MenuPage.values.map((page) {
        return SidebarXItem(
          iconBuilder: (selected, hovered) {
            return Icon(
              page.icon,
              size: selected ? 28 : 24,
              color: selected
                  ? Theme.of(context).primaryColorLight
                  : Theme.of(context).highlightColor,
            );
          },

          icon: page.icon,
          label: page.getLabel(context),
          // let the cubit handle the navigation to next page
          onTap: () => onTap(page),
        );
      }).toList();
}

class _Header extends StatelessWidget {
  const _Header({required this.extended});

  final bool extended;

  @override
  Widget build(BuildContext context) {
    final user = s1.get<IAuthenticationService>().currentUser().asValue?.value;

    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withAlpha(120),
            blurRadius: 6,
            spreadRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Theme.of(context).primaryColorLight.withAlpha(200),
            Theme.of(context).primaryColor,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 8, 8),
        child: Align(
          alignment: extended ? Alignment.centerLeft : Alignment.center,
          child: extended
              ? Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      spacing: 8,
                      children: [
                        const DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/login_image.jpg'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'BirdBreeder',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ],
                    ),
                    if (user != null)
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Hallo ',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            TextSpan(
                              text: user.name ?? user.username,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                  ],
                )
              : const Icon(Icons.menu),
        ),
      ),
    );
  }
}
