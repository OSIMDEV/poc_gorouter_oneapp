import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_app/components/app_navigation_bar.dart';
import 'package:one_app/consts/constants.dart';
import 'package:one_app/go_router/route_paths.dart';
import 'package:one_app/tab_pages/product_page.dart';
import 'package:one_app/tab_pages/profile_page.dart';
import 'package:one_app/tab_pages/wellbeing_page.dart';

part 'app_route_data.g.dart';

@TypedStatefulShellRoute<AppShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<ProductBranch>(
      routes: [
        TypedGoRoute<ProductRouteData>(
          path: RoutePaths.productWithPrefixSlash,
          routes: [],
        ),
      ],
    ),
    TypedStatefulShellBranch<WellbeingBranch>(
      routes: [
        TypedGoRoute<WellbeingRouteData>(
          path: RoutePaths.wellbeingWithPrefixSlash,
          routes: [],
        ),
      ],
    ),
    TypedStatefulShellBranch<ProfileBranch>(
      routes: [
        TypedGoRoute<ProfileRouteData>(
          path: RoutePaths.profileWithPrefixSlash,
          routes: [],
        ),
      ],
    ),
  ],
)
class AppShellRouteData extends StatefulShellRouteData {
  const AppShellRouteData();

  static final $navigatorKey = globalKeys[RoutePaths.root];

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

  static final $navigatorKey = globalKeys[RoutePaths.product];
}

class WellbeingBranch extends StatefulShellBranchData {
  const WellbeingBranch();

  static final $navigatorKey = globalKeys[RoutePaths.wellbeing];
}

class ProfileBranch extends StatefulShellBranchData {
  const ProfileBranch();

  static final $navigatorKey = globalKeys[RoutePaths.profile];
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
