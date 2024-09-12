import 'package:one_app/products/product.dart';
import 'package:one_app/products/product_repository.dart';

class FaqRepository {
  late final ProductRepository _productRepo;

  FaqRepository() : _productRepo = ProductRepository();

  List<Product> get products => _productRepo.products;

  Product getProductBy(String id) => _productRepo.getProductBy(id);
}
