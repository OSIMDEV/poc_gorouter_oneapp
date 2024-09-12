import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_app/components/nav_bar.dart';
import 'package:one_app/osim_keys.dart';
import 'package:one_app/themes/osim_icons.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: navigationShell,
        bottomNavigationBar: _NavBarView(navigationShell),
      );
}

class _NavBarView extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const _NavBarView(this.navigationShell);

  @override
  Widget build(BuildContext context) => NavBar(
        onTap: (index) => navigationShell.goBranch(index),
        currentIndex: navigationShell.currentIndex,
        items: [
          NavBarItem(
            icon: OsimIcons.devices,
            iconSelected: OsimIcons.devices_filled,
            label: 'Products',
            key: OsimKeys.deviceTabItem,
          ),
          NavBarItem(
            icon: OsimIcons.wellbeing,
            iconSelected: OsimIcons.wellbeing_filled,
            label: 'Well-Being',
            key: OsimKeys.wellbeingTabItem,
          ),
          NavBarItem(
            icon: OsimIcons.profile,
            iconSelected: OsimIcons.profile___filled,
            label: 'Profile',
            withRedDot: true,
            key: OsimKeys.profileTabItem,
          ),
        ],
      );
}
