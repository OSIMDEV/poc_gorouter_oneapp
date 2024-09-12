import 'package:flutter/material.dart';
import 'package:one_app/go_router/app_route_data.dart';
import 'package:one_app/products/product.dart';

class ProductView extends StatelessWidget {
  final Product product;

  const ProductView({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          ProductDetailRouteData(product.id).go(context);
        },
        child: Container(
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
      );
}
