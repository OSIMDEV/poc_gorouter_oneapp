mixin RoutePaths {
  static const String root = '';
  static const String product = 'product';
  static const String wellbeing = 'wellbeing';
  static const String profile = 'profile';

  static const String rootWithPrefixSlash = '/';
  static const String productWithPrefixSlash = '/product';
  static const String wellbeingWithPrefixSlash = '/wellbeing';
  static const String profileWithPrefixSlash = '/profile';

  static const tabPathIndices = [
    product,
    wellbeing,
    profile,
  ];

  static const tabPaths = <String, String>{
    product: productWithPrefixSlash,
    wellbeing: wellbeingWithPrefixSlash,
    profile: profileWithPrefixSlash,
  };
}
