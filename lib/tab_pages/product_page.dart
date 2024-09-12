import 'package:flutter/material.dart';
import 'package:one_app/components/osim_appbar.dart';
import 'package:one_app/products/product_grid_view.dart';
import 'package:one_app/themes/osim_color_scheme.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: const OsimAppBar(
            allowBack: false,
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              top: 12.0,
              right: 12.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Products',
                  style: TextStyle(
                    color: osimColorScheme.osimBrown,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12.0),
                const ProductGridView(),
              ],
            ),
          ),
        ),
      );
}
