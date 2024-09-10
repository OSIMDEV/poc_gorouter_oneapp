import 'package:flutter/material.dart';
import 'package:one_app/consts/constants.dart';
import 'package:one_app/viewmodels/root_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RootViewModel()),
      ],
      builder: (cxt, __) {
        final rootVm = cxt.watch<RootViewModel>();
        return MaterialApp.router(
          title: appName,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routeInformationProvider: rootVm.router.routeInformationProvider,
          routeInformationParser: rootVm.router.routeInformationParser,
          routerDelegate: rootVm.router.routerDelegate,
        );
      },
    );
  }
}
