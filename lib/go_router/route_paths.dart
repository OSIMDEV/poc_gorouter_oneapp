mixin RoutePaths {
  static const String root = '';
  static const String product = 'product';
  static const String wellbeing = 'wellbeing';
  static const String profile = 'profile';
  static const String productDetail = 'productDetail';
  static const String faq = 'faq';

  static const String rootWithPrefixSlash = '/$root';
  static const String productWithPrefixSlash = '/$product';
  static const String wellbeingWithPrefixSlash = '/$wellbeing';
  static const String profileWithPrefixSlash = '/$profile';
  static const String productDetailWithPrefixSlash = '/$productDetail';
  static const String faqPrefixSlash = '/$faq';

  static const tabPaths = <String, String>{
    product: productWithPrefixSlash,
    wellbeing: wellbeingWithPrefixSlash,
    profile: profileWithPrefixSlash,
  };
}
