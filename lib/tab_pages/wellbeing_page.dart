import 'package:flutter/material.dart';
import 'package:one_app/components/osim_appbar.dart';

class WellbeingPage extends StatelessWidget {
  const WellbeingPage({super.key});

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async => false,
        child: const Scaffold(
          appBar: OsimAppBar(
            allowBack: false,
          ),
          body: Center(
            child: Text('大健康页'),
          ),
        ),
      );
}
