import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_app/components/error_page.dart';
import 'package:one_app/consts/constants.dart';
import 'package:one_app/go_router/app_route_data.dart';
import 'package:one_app/go_router/routes.dart';

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
