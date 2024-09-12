import 'package:flutter/material.dart';
import 'package:one_app/components/osim_appbar.dart';
import 'package:one_app/products/product_viewmodel.dart';
import 'package:provider/provider.dart';

class ProductDetailPage extends StatelessWidget {
  final String? productId;

  const ProductDetailPage({
    super.key,
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    final pId = int.tryParse(productId ?? '') ?? -1;
    final products = context.select((ProductViewModel vm) => vm.products);
    final product = pId == -1 ? null : products[pId];
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: const OsimAppBar(),
        body: product == null
            ? Container()
            : Center(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Image.network(product.picUrl).image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      12.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 36.0,
                        ),
                        ...?product.properties?.keys.map(
                          (key) => Column(
                            children: [
                              Text(
                                '$key: ${product.properties![key]}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
