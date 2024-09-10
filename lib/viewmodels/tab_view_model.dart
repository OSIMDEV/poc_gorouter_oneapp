import 'package:flutter/material.dart';

/// The tabs on home page.
enum TabItem {
  product('device_nav'),
  wellBeing('wellbeing_nav'),
  profile('profile_nav');

  const TabItem(this.dataValue);

  final String dataValue;
}

class TabViewModel extends ChangeNotifier {
  /// The current showing page on the homepage.
  TabItem get currentItem => _item;
  var _item = TabItem.wellBeing;

  /// Set the home page to the selected tab
  void selectItem(TabItem item) {
    _item = item;
    notifyListeners();
  }
}
