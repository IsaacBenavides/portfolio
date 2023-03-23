import 'package:flutter/material.dart';
import 'package:ios_portfolio/ui/pages/main.dart';
import 'package:ios_portfolio/ui/routes/names.dart';

class CustomRoutes {
  static Route<dynamic> routes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashPage(),
          settings: settings,
        );

      case RoutesNames.home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(),
          settings: settings,
        );
    }
  }
}
