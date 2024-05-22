import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/router/routes.dart';
import 'package:stylish_ecommerce/presentation/screens/home_btm_navigation_bar.dart';

/// Handles the navigation and route generation for the application.
class AppRouter {
  /// Generates and returns the appropriate route based on the provided [RouteSettings].
  Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePageButtomnavigationBar()
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${routeSettings.name}'),
            ),
          ),
        );
    }
  }
}
