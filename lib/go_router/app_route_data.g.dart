// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_route_data.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appShellRouteData,
      $fAQRouteData,
    ];

RouteBase get $appShellRouteData => StatefulShellRouteData.$route(
      factory: $AppShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: ProductBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/product',
              factory: $ProductRouteDataExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'productDetail',
                  name: 'productDetail',
                  parentNavigatorKey:
                      ProductDetailRouteData.$parentNavigatorKey,
                  factory: $ProductDetailRouteDataExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: WellbeingBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/wellbeing',
              name: 'wellbeing',
              factory: $WellbeingRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: ProfileBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/profile',
              name: 'profile',
              factory: $ProfileRouteDataExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $AppShellRouteDataExtension on AppShellRouteData {
  static AppShellRouteData _fromState(GoRouterState state) =>
      const AppShellRouteData();
}

extension $ProductRouteDataExtension on ProductRouteData {
  static ProductRouteData _fromState(GoRouterState state) =>
      const ProductRouteData();

  String get location => GoRouteData.$location(
        '/product',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProductDetailRouteDataExtension on ProductDetailRouteData {
  static ProductDetailRouteData _fromState(GoRouterState state) =>
      ProductDetailRouteData(
        state.uri.queryParameters['product-id']!,
      );

  String get location => GoRouteData.$location(
        '/product/productDetail',
        queryParams: {
          'product-id': productId,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WellbeingRouteDataExtension on WellbeingRouteData {
  static WellbeingRouteData _fromState(GoRouterState state) =>
      const WellbeingRouteData();

  String get location => GoRouteData.$location(
        '/wellbeing',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileRouteDataExtension on ProfileRouteData {
  static ProfileRouteData _fromState(GoRouterState state) =>
      const ProfileRouteData();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $fAQRouteData => GoRouteData.$route(
      path: '/faq',
      name: '/faq',
      factory: $FAQRouteDataExtension._fromState,
    );

extension $FAQRouteDataExtension on FAQRouteData {
  static FAQRouteData _fromState(GoRouterState state) => const FAQRouteData();

  String get location => GoRouteData.$location(
        '/faq',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
