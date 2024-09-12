import 'package:flutter/widgets.dart';
import 'package:one_app/products/product.dart';
import 'package:one_app/products/product_repository.dart';

class ProductViewModel extends ChangeNotifier {
  final ProductRepository _repo;

  ProductViewModel() : _repo = ProductRepository();

  List<Product> get products => _repo.products;

  Product getProductBy(String id) => _repo.getProductBy(id);
}
