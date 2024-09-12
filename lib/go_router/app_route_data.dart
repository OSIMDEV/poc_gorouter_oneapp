import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_app/components/app_navigation_bar.dart';
import 'package:one_app/consts/constants.dart';
import 'package:one_app/go_router/route_paths.dart';
import 'package:one_app/products/product_detail_page.dart';
import 'package:one_app/profile/faq_page.dart';
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
          routes: [
            TypedGoRoute<ProductDetailRouteData>(
                path: RoutePaths.productDetail,
                name: RoutePaths.productDetail,
                routes: [])
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<WellbeingBranch>(
      routes: [
        TypedGoRoute<WellbeingRouteData>(
          path: RoutePaths.wellbeingWithPrefixSlash,
          name: RoutePaths.wellbeing,
          routes: [],
        ),
      ],
    ),
    TypedStatefulShellBranch<ProfileBranch>(
      routes: [
        TypedGoRoute<ProfileRouteData>(
          path: RoutePaths.profileWithPrefixSlash,
          name: RoutePaths.profile,
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

class ProductDetailRouteData extends GoRouteData {
  final String productId;

  const ProductDetailRouteData(this.productId);

  static final $parentNavigatorKey = globalKeys[RoutePaths.root];

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProductDetailPage(
      productId: productId,
    );
  }
}

@TypedGoRoute<FAQRouteData>(
    path: RoutePaths.faqPrefixSlash,
    name: RoutePaths.faqPrefixSlash,
    routes: [])
class FAQRouteData extends GoRouteData {
  const FAQRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FAQPage();
  }
}
