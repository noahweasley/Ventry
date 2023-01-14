import 'package:flutter/material.dart';
import 'package:ventry/app_initialization.dart';
import 'package:ventry/route.dart';

void main() async {
  await AppInitialization.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: RouteGenerator.router,
    );
  }
}
