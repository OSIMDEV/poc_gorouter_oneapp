import 'package:flutter/material.dart';
import 'package:one_app/products/product_view.dart';
import 'package:one_app/products/product_viewmodel.dart';
import 'package:provider/provider.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.select((ProductViewModel vm) => vm.products);
    return Flexible(
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (_, index) => ProductView(
          product: products[index],
        ),
      ),
    );
  }
}
