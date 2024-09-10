import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_app/components/nav_bar.dart';
import 'package:one_app/osim_keys.dart';
import 'package:one_app/themes/osim_icons.dart';
import 'package:one_app/viewmodels/tab_view_model.dart';
import 'package:provider/provider.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    super.key,
    required this.navigationShell,
    this.onItemSelected,
  });

  final Function(TabItem)? onItemSelected;
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => TabViewModel(),
            ),
          ],
          builder: (_, __) => Scaffold(
                body: navigationShell,
                bottomNavigationBar: _NavBarView(
                  onItemSelected: onItemSelected,
                ),
              ));
}

class _NavBarView extends StatelessWidget {
  final Function(TabItem)? onItemSelected;

  const _NavBarView({
    this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TabViewModel>();
    return NavBar(
      onTap: (index) {
        final tabItem = TabItem.values[index];
        onItemSelected?.call(tabItem);
        viewModel.selectItem(tabItem);
      },
      currentIndex: viewModel.currentItem.index,
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
}
