import 'package:flutter/cupertino.dart';
import 'package:one_app/go_router/route_paths.dart';

const appName = 'OSIM';

final globalKeys = {
  RoutePaths.root: GlobalKey<NavigatorState>(),
  RoutePaths.product: GlobalKey<NavigatorState>(debugLabel: RoutePaths.product),
  RoutePaths.wellbeing:
      GlobalKey<NavigatorState>(debugLabel: RoutePaths.wellbeing),
  RoutePaths.profile: GlobalKey<NavigatorState>(debugLabel: RoutePaths.profile),
};
