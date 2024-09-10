import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_app/consts/constants.dart';
import 'package:one_app/go_router/app_router.dart';
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
        Provider.value(value: goRouter),
      ],
      builder: (cxt, __) {
        final router = cxt.watch<GoRouter>();
        return MaterialApp.router(
          title: appName,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routeInformationProvider: router.routeInformationProvider,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
        );
      },
    );
  }
}
