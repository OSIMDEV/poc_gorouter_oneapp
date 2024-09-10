import 'package:flutter/material.dart';
import 'package:one_app/components/osim_appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async => false,
        child: const Scaffold(
          appBar: OsimAppBar(
            allowBack: false,
          ),
          body: Center(
            child: Text('个人页'),
          ),
        ),
      );
}
