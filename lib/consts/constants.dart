import 'package:flutter/cupertino.dart';
import 'package:one_app/go_router/routes.dart';

const appName = 'OSIM';

final globalKeys = {
  Routes.root: GlobalKey<NavigatorState>(),
  Routes.product: GlobalKey<NavigatorState>(debugLabel: Routes.product),
  Routes.wellbeing: GlobalKey<NavigatorState>(debugLabel: Routes.wellbeing),
  Routes.profile: GlobalKey<NavigatorState>(debugLabel: Routes.profile),
};
