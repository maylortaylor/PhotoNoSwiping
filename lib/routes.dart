import 'package:flutter/material.dart';
import 'package:photo_no_swiping/views/home_screen.dart';
import 'package:photo_no_swiping/views/settings_screen.dart';
import 'package:photo_no_swiping/views/splash_screen.dart';

class Routes {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String settings = '/settings';
}

class Router {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SplashScreen(),
          settings: settings,
          fullscreenDialog: true,
        );
      case Routes.home:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeScreen(),
          settings: settings,
          fullscreenDialog: true,
        );
      case Routes.settings:
        // final Map<String, dynamic> mapArgs = args;
        // final Job job = mapArgs['job'];
        // final Entry entry = mapArgs['entry'];
        return MaterialPageRoute<dynamic>(
          builder: (_) => SettingsScreen(),
          settings: settings,
          fullscreenDialog: true,
        );
      default:
        // TODO: Throw
        return null;
    }
  }
}
