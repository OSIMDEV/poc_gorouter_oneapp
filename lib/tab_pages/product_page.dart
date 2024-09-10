import 'package:flutter/material.dart';
import 'package:one_app/components/osim_appbar.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async => false,
        child: const Scaffold(
          appBar: OsimAppBar(
            allowBack: false,
          ),
          body: Center(
            child: Text('产品页'),
          ),
        ),
      );
}
