import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_app/components/app_navigation_bar.dart';
import 'package:one_app/components/error_page.dart';
import 'package:one_app/consts/constants.dart';
import 'package:one_app/go_router/app_route_data.dart';
import 'package:one_app/go_router/routes.dart';
import 'package:one_app/tab_pages/product_page.dart';
import 'package:one_app/tab_pages/profile_page.dart';
import 'package:one_app/tab_pages/wellbeing_page.dart';

final goRouter = GoRouter(
  navigatorKey: globalKeys[Routes.root],
  initialLocation: Routes.productWithPrefixSlash,
  routes: $appRoutes,
  // routes: appRoutes,
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: ErrorPage(
      message: state.error!.message,
    ),
  ),
  redirect: (context, state) {
    return null;
  },
);

final appRoutes = [
  StatefulShellRoute.indexedStack(
    parentNavigatorKey: globalKeys[Routes.product],
    builder: (context, state, navigationShell) =>
        AppNavigationBar(navigationShell: navigationShell),
    branches: [
      StatefulShellBranch(navigatorKey: globalKeys[Routes.product], routes: [
        GoRoute(
            name: Routes.product,
            path: Routes.productWithPrefixSlash,
            pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const ProductPage(),
                ),
            routes: [
              // GoRoute(
              //   name: 'detail',
              //   path: 'detail',
              //   parentNavigatorKey: rootNavigatorKey,
              //   pageBuilder: (context, state) {
              //     final product = state.extra as Product;
              //     return MaterialPage(
              //         child: ProductDetailScreen(product: product));
              //   },
              // )
            ]),
      ]),
      StatefulShellBranch(navigatorKey: globalKeys[Routes.wellbeing], routes: [
        GoRoute(
          name: Routes.wellbeing,
          path: Routes.wellbeingWithPrefixSlash,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const WellbeingPage(),
          ),
        ),
      ]),
      StatefulShellBranch(navigatorKey: globalKeys[Routes.profile], routes: [
        GoRoute(
            name: Routes.profile,
            path: Routes.profileWithPrefixSlash,
            pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const ProfilePage(),
                ),
            routes: [
              // GoRoute(
              //   name: 'payment',
              //   path: Routes.payment,
              //   pageBuilder: (context, state) {
              //     return MaterialPage(
              //       key: state.pageKey,
              //       child: const PaymentScreen(),
              //     );
              //   },
              // ),
            ]),
      ]),
    ],
  ),
  // GoRoute(
  //   name: 'top',
  //   path: '/top',
  //   pageBuilder: (context, state) => MaterialPage(
  //     key: state.pageKey,
  //     child: const TopScreen(),
  //   ),
  //   routes: [
  //     // サブルートへの画面遷移のサンプル
  //     GoRoute(
  //       name: 'signin',
  //       path: 'signin',
  //       pageBuilder: (context, state) => MaterialPage(
  //         key: state.pageKey,
  //         child: const SigninScreen(),
  //       ),
  //     ),
  //     GoRoute(
  //       name: 'signup',
  //       path: 'signup',
  //       pageBuilder: (context, state) => MaterialPage(
  //         key: state.pageKey,
  //         child: const SignupScreen(),
  //       ),
  //     ),
  //   ],
  // ),
];
