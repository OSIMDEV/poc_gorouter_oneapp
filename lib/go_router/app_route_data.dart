import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_app/components/app_navigation_bar.dart';
import 'package:one_app/consts/constants.dart';
import 'package:one_app/go_router/routes.dart';
import 'package:one_app/tab_pages/product_page.dart';
import 'package:one_app/tab_pages/profile_page.dart';
import 'package:one_app/tab_pages/wellbeing_page.dart';

part 'app_route_data.g.dart';

@TypedStatefulShellRoute<AppShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<ProductBranch>(
      routes: [
        TypedGoRoute<ProductRouteData>(
          path: Routes.productWithPrefixSlash,
          routes: [],
        ),
      ],
    ),
    TypedStatefulShellBranch<WellbeingBranch>(
      routes: [
        TypedGoRoute<WellbeingRouteData>(
          path: Routes.wellbeingWithPrefixSlash,
          routes: [],
        ),
      ],
    ),
    TypedStatefulShellBranch<ProfileBranch>(
      routes: [
        TypedGoRoute<ProfileRouteData>(
          path: Routes.profileWithPrefixSlash,
          routes: [],
        ),
      ],
    ),
  ],
)
class AppShellRouteData extends StatefulShellRouteData {
  const AppShellRouteData();

  static final $navigatorKey = globalKeys[Routes.root];

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return AppNavigationBar(
      navigationShell: navigationShell,
      onItemSelected: (tabItem) {
        final index = tabItem.index;
        navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        );
      },
    );
  }
}

class ProductBranch extends StatefulShellBranchData {
  const ProductBranch();

  static final $navigatorKey = globalKeys[Routes.product];
}

class WellbeingBranch extends StatefulShellBranchData {
  const WellbeingBranch();

  static final $navigatorKey = globalKeys[Routes.wellbeing];
}

class ProfileBranch extends StatefulShellBranchData {
  const ProfileBranch();

  static final $navigatorKey = globalKeys[Routes.profile];
}

class ProductRouteData extends GoRouteData {
  const ProductRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProductPage();
  }
}

class WellbeingRouteData extends GoRouteData {
  const WellbeingRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const WellbeingPage();
  }
}

class ProfileRouteData extends GoRouteData {
  const ProfileRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfilePage();
  }
}
