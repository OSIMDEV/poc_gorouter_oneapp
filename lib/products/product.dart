class Product {
  final String id;
  final String name;
  final String picUrl;
  final String linkUrl;
  final Map<String, String>? properties;

  factory Product.create({
    required String id,
    required String name,
    required String picUrl,
    required String linkUrl,
    Map<String, String>? properties,
  }) =>
      Product._(
        id: id,
        name: name,
        picUrl: picUrl,
        linkUrl: linkUrl,
        properties: properties,
      );

  const Product._({
    required this.id,
    required this.name,
    required this.picUrl,
    required this.linkUrl,
    this.properties,
  });
}
