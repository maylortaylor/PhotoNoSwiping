import 'package:photo_no_swiping/common/constants/app_strings.dart';
import 'package:photo_no_swiping/views/splash_screen.dart';
import 'package:photo_no_swiping/theme/theme_notifier.dart';
import 'package:photo_no_swiping/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppRootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: AppStrings.appName,
      theme: themeNotifier.getTheme(),
      onGenerateRoute: Router.onGenerateRoute,
      home: SplashScreen(),
    );
  }
}
