import 'package:birdbreeder/features/menu/domain/entities/menu_pages.dart';
import 'package:birdbreeder/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

const defaultMenuClosedWidth = 56.0;
const defaultMenuOpenedWidth = 200.0;

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
    const itemMargin = EdgeInsets.symmetric(horizontal: 4, vertical: 2);
    const itemDecoration = BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(6),
      ),
    );

    final baseTheme = SidebarXTheme(
      decoration: const BoxDecoration(
          //color: Theme.of(context).primaryColor,
          // gradient: LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   colors: [
          //     Theme.of(context).primaryColor,
          //     Theme.of(context).primaryColorDark,
          //   ],
          // ),
          ),
      iconTheme: const IconThemeData(
        //   color: Colors.white,
        size: 20,
      ),
      textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
            // color: Colors.white,
            fontSize: 14,
          ),
      selectedTextStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
            // color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
      hoverTextStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
            //  color: Colors.white,
            fontSize: 14,
          ),
      // hoverColor: Colors.white.withAlpha(20),
      itemMargin: itemMargin,
      selectedItemMargin: itemMargin,
      selectedIconTheme: const IconThemeData(
        //color: Colors.white,
        size: 20,
      ),
      selectedItemDecoration: itemDecoration.copyWith(
          // color: Colors.white.withAlpha(20),
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
        top: 4,
      ),
    );

    return baseTheme.copyWith(
      width: extended ? defaultMenuOpenedWidth : baseTheme.width,
    );
  }

  Widget _getHeaderDivider(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    //Please be aware that header height and menu element height might change;
    const menuElementHeight = 56; //inluding spacing between elements;
    final allMenuElementsHeight = MenuPage.values.length * menuElementHeight;
    final menuFocalPoint = allMenuElementsHeight / 2;
    final dividerHeight = (pageHeight / 2) - menuFocalPoint;
    return Container(
      height: dividerHeight,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: controller,
      headerBuilder: (context, extended) => _Header(
        extended: extended,
      ),
      separatorBuilder: (context, index) {
        final separatorBeforeAccount = (MenuPage.account.index - 1) == index;
        return SizedBox(
          height: separatorBeforeAccount ? 60 : 0,
        );
      },
      showToggleButton: showToggleButton,
      animationDuration: Duration.zero,
      headerDivider: _getHeaderDivider(context),
      extendedTheme: _getSidebarTheme(context, extended: true),
      theme: _getSidebarTheme(context, extended: false),
      items: _buildSidebarItems(context),
    );
  }

  List<SidebarXItem> _buildSidebarItems(BuildContext context) =>
      MenuPage.values.map((page) {
        return SidebarXItem(
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
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 8, 8),
        child: Align(
          alignment: extended ? Alignment.centerLeft : Alignment.center,
          child: Text(
            extended ? context.l10n.app_title.toUpperCase() : 'B',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  //  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
