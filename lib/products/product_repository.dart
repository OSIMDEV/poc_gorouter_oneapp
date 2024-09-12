import 'package:one_app/products/product.dart';

class ProductRepository {
  late final List<Product> _products;

  ProductRepository()
      : _products = [
          Product.create(
            id: '0',
            name: 'Bird Scene',
            picUrl:
                'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
            linkUrl: '',
            properties: {
              'Size': '300 * 300',
              'Color': 'Pink',
              'Cost': '\$100',
            },
          ),
          Product.create(
            id: '1',
            name: 'Fox',
            picUrl:
                'https://fuss10.elemecdn.com/3/28/bbf893f792f03a54408b3b7a7ebf0jpeg.jpeg',
            linkUrl: '',
            properties: {
              'Size': '400 * 300',
              'Color': 'White',
              'Cost': '\$150',
            },
          ),
          Product.create(
            id: '2',
            name: 'Mountain',
            picUrl:
                'https://cube.elemecdn.com/6/94/4d3ea53c084bad6931a56d5158a48jpeg.jpeg',
            linkUrl: '',
            properties: {
              'Size': '500 * 300',
              'Color': 'Brown',
              'Cost': '\$200',
            },
          ),
        ];

  List<Product> get products => _products;

  Product getProductBy(String id) => _products.firstWhere((p) => p.id == id);
}
