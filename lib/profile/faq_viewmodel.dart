import 'package:flutter/widgets.dart';
import 'package:one_app/products/product.dart';
import 'package:one_app/profile/faq_repository.dart';

class FaqViewModel extends ChangeNotifier {
  final String _logoUrl;
  final FaqRepository _repo;

  FaqViewModel()
      : _repo = FaqRepository(),
        _logoUrl = 'https://picsum.photos/200/200?random=1';

  String get logoUrl => _logoUrl;

  List<Product> get products => _repo.products;

  Product getProductBy(String id) => _repo.getProductBy(id);
}
