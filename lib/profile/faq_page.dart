import 'package:flutter/material.dart';
import 'package:one_app/components/osim_appbar.dart';
import 'package:one_app/components/user_avatar.dart';
import 'package:one_app/go_router/app_route_data.dart';
import 'package:one_app/profile/faq_viewmodel.dart';
import 'package:one_app/themes/osim_color_scheme.dart';
import 'package:provider/provider.dart';

/// A page for the user select the product FAQ.
class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => FaqViewModel()),
          ],
          builder: (cxt, __) {
            final vm = cxt.watch<FaqViewModel>();
            return WillPopScope(
              onWillPop: () async => true,
              child: Scaffold(
                appBar: const OsimAppBar(),
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
                      SingleChildScrollView(
                        physics: const ClampingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...vm.products.map(
                              (product) => InkWell(
                                onTap: () {
                                  ProductDetailRouteData(product.id)
                                      .go(context);
                                },
                                child: Column(
                                  children: [
                                    const SizedBox(height: 12),
                                    Row(
                                      children: [
                                        UserAvatar(
                                          size: 50,
                                          imageUrl: vm.logoUrl,
                                        ),
                                        const SizedBox(width: 24),
                                        Text(product.name),
                                      ],
                                    ),
                                    const SizedBox(height: 12),
                                    const Divider(
                                      height: 1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          });
}
