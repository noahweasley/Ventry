import 'package:flutter/material.dart';
import 'package:ventry/localization/strings.dart';
import 'package:ventry/routes.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => Strings.appName,
      initialRoute: RouteGenerator.homePage,
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData().copyWith(
        colorScheme: const ColorScheme.light(
          primary: Colors.pinkAccent,
          secondary: Colors.pinkAccent,
          onSecondary: Colors.white,
        ),
      ),
    );
  }
}
