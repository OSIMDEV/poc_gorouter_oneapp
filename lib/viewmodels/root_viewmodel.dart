import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:one_app/go_router/app_router.dart';
import 'package:one_app/go_router/route_paths.dart';

class RootViewModel extends ChangeNotifier {
  GoRouter? _goRouter;

  RootViewModel() {
    final initPath = RoutePaths.tabPaths[RoutePaths.wellbeing]!;
    _goRouter = buildGoRouter(initPath);
  }

  GoRouter get router => _goRouter!;
}
