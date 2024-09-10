import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:one_app/go_router/app_router.dart';
import 'package:one_app/go_router/route_paths.dart';
import 'package:one_app/viewmodels/tab_view_model.dart';

class RootViewModel extends ChangeNotifier {
  TabViewModel? _tabViewModel;
  GoRouter? _goRouter;

  RootViewModel() {
    _tabViewModel = TabViewModel();
    final tabItem = _tabViewModel!.currentItem;
    final pathKey = RoutePaths.tabPathIndices[tabItem.index];
    _goRouter = buildGoRouter(RoutePaths.tabPaths[pathKey]!);
  }

  TabItem get currentItem => _tabViewModel!.currentItem;

  /// Set the home page to the selected tab
  void selectItem(TabItem item) {
    _tabViewModel!.selectItem(item);
    notifyListeners();
  }

  GoRouter get router => _goRouter!;
}
