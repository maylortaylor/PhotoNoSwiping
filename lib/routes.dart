import 'package:flutter/material.dart';
import 'package:photo_no_swiping/core/views/home_screen.dart';
import 'package:photo_no_swiping/core/views/settings_screen.dart';
import 'package:photo_no_swiping/core/views/splash_screen.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String home = '/home';
  static const String settings = '/settings';

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    home: (BuildContext context) => HomeScreen(),
    settings: (BuildContext context) => SettingsScreen()
  };
}
