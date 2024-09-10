import 'package:one_app/go_router/route_paths.dart';

/// The tabs on page.
enum TabItem {
  product(RoutePaths.product),
  wellBeing(RoutePaths.wellbeing),
  profile(RoutePaths.profile);

  const TabItem(this.dataValue);

  final String dataValue;
}

class TabViewModel {
  /// The current showing page.
  TabItem get currentItem => _item;
  var _item = TabItem.wellBeing;

  /// Set the page to the selected tab
  void selectItem(TabItem item) {
    _item = item;
  }
}
