import 'package:flutter/material.dart';
import 'package:ventry/routes/home_page.dart';
import 'package:ventry/localization/strings.dart';

class RouteGenerator {
  static const String homePage = HomePage.routeName;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.routeName:
        return MaterialPageRoute(
          builder: ((context) => const HomePage(title: Strings.appName)),
        );
      default:
        throw Exception('Route was not found for ${settings.name}');
    }
  }
}
